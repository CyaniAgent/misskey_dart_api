// SPDX-License-Identifier: BSD-3-Clause

import 'package:misskey_dart_api/misskey_dart_api.dart';
import 'package:test/test.dart';

import 'support/fixtures.dart';

void main() {
  group('models', () {
    test('parses MetaLite', () {
      final meta = MetaLite.fromJson(metaLiteJson());

      expect(meta.name, 'Misskey');
      expect(meta.ads.single.id, 'ad-1');
      expect(
        meta.clientOptions.entrancePageStyle,
        MetaEntrancePageStyle.classic,
      );
      expect(meta.policies.chatAvailability, ChatAvailability.available);
    });

    test('parses MetaDetailed', () {
      final meta = MetaDetailed.fromJson(metaDetailedJson());

      expect(meta.features?.miauth, isTrue);
      expect(meta.cacheRemoteFiles, isTrue);
    });

    test('parses User unions', () {
      expect(User.fromJson(meDetailedJson()), isA<MeDetailed>());
      final detailed = Map<String, dynamic>.from(meDetailedJson())
        ..remove('isAdmin');
      expect(User.fromJson(detailed), isA<UserDetailedNotMe>());
      final lite = Map<String, dynamic>.from(detailed)
        ..remove('createdAt')
        ..remove('updatedAt')
        ..remove('lastFetchedAt');
      expect(User.fromJson(lite), isA<UserLite>());
    });

    test('parses Notification', () {
      final notification = Notification.fromJson({
        'id': 'notification-1',
        'createdAt': '2026-01-01T00:00:00.000Z',
        'type': 'note',
        'user': meDetailedJson(),
        'userId': 'user-1',
        'note': noteJson(),
      });

      expect(notification, isA<NotificationNote>());
      expect(notification.toJson()['type'], 'note');
    });

    test('parses PageBlock recursively', () {
      final block = PageBlock.fromJson({
        'id': 'block-1',
        'type': 'section',
        'title': 'Section',
        'children': [
          {'id': 'child-1', 'type': 'text', 'text': 'Hello'},
        ],
      });

      expect(block, isA<PageBlockSection>());
      final section = block as PageBlockSection;
      expect(section.children.single, isA<PageBlockText>());
      expect((section.children.single as PageBlockText).text, 'Hello');
    });

    test('parses RoleCondFormulaValue', () {
      final value = RoleCondFormulaValue.fromJson({
        'id': 'formula-1',
        'type': 'and',
        'values': <Map<String, dynamic>>[],
      });

      expect(value, isA<RoleCondFormulaLogics>());
      expect(value.toJson()['type'], 'and');
    });

    test('parses MeDetailed', () {
      final me = MeDetailed.fromJson(meDetailedJson());

      expect(me.username, 'alice');
      expect(me.roles.single.name, 'Admin');
      expect(me.unreadAnnouncements.single.icon, AnnouncementIcon.info);
      expect(me.achievements.single.name, AchievementName.notes1);
      expect(
        me.securityKeysList!.single.lastUsed,
        DateTime.parse('2026-01-01T00:00:00.000Z'),
      );
      expect(
        me.avatarDecorations.single.url,
        'https://example.com/decoration.png',
      );
      expect(me.fields.single.name, 'Website');
      expect(me.instance?.softwareName, 'misskey');
      expect(me.badgeRoles?.single.name, 'Admin');
    });
  });
}
