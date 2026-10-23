// SPDX-License-Identifier: BSD-3-Clause

/// A single page fetched with Misskey's `untilId` cursor convention.
class CursorPage<T> {
  CursorPage._(
    this.items,
    this.hasMore,
    this.nextCursor,
    this._limit,
    this._idOf,
    this._fetchPage,
  );

  /// Fetches the first page.
  static Future<CursorPage<T>> fetch<T>({
    required int limit,
    String? untilId,
    required String Function(T item) idOf,
    required Future<List<T>> Function(int limit, String? untilId) fetchPage,
  }) async {
    if (limit < 1 || limit > 100) {
      throw ArgumentError.value(limit, 'limit', 'Must be between 1 and 100.');
    }
    final fetched = List<T>.unmodifiable(await fetchPage(limit, untilId));
    return CursorPage<T>._(
      fetched,
      fetched.length == limit,
      fetched.isEmpty ? null : idOf(fetched.last),
      limit,
      idOf,
      fetchPage,
    );
  }

  /// The items in this page.
  final List<T> items;

  /// Whether another page may be available.
  final bool hasMore;

  /// The cursor for the next page, when [hasMore] is true.
  final String? nextCursor;

  final int _limit;
  final String Function(T item) _idOf;
  final Future<List<T>> Function(int limit, String? untilId) _fetchPage;

  /// Fetches the next page, or returns null when the chain is exhausted.
  Future<CursorPage<T>?> next() async {
    final cursor = nextCursor;
    if (!hasMore || cursor == null) return null;
    final fetched = List<T>.unmodifiable(await _fetchPage(_limit, cursor));
    if (fetched.isEmpty) return null;
    return CursorPage<T>._(
      fetched,
      fetched.length == _limit,
      _idOf(fetched.last),
      _limit,
      _idOf,
      _fetchPage,
    );
  }

  /// Yields this page and subsequent pages, de-duplicating by item id.
  Stream<T> stream({int? maxItems}) async* {
    if (maxItems != null && maxItems <= 0) return;
    final seen = <String>{};
    var yielded = 0;
    CursorPage<T>? page = this;
    while (page != null) {
      var added = 0;
      for (final item in page.items) {
        if (seen.add(_idOf(item))) {
          yield item;
          yielded++;
          added++;
          if (maxItems != null && yielded >= maxItems) return;
        }
      }
      if (!page.hasMore) return;
      if (page.items.isNotEmpty && added == 0) return;
      page = await page.next();
    }
  }
}
