// SPDX-License-Identifier: BSD-3-Clause

import 'dart:async';

/// Supplies an access token for a request, or `null` when unauthenticated.
typedef TokenProvider = FutureOr<String?> Function();
