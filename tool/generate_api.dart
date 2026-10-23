// SPDX-License-Identifier: BSD-3-Clause

// ignore_for_file: dead_code, prefer_collection_literals, unnecessary_cast, unrelated_type_equality_checks, unreachable_switch_case

import 'dart:collection';
import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:dart_style/dart_style.dart';

const _expectedVersion = '2026.9.0';
const _expectedHash =
    'c5e9547bd553c7a63a16c912410e791f20e2b393feecab14165f3ddd31af6ebf';
const _repoRoot = '.';
const _skipPaths = {'/meta', '/i'};

const _sourceSegment = <String, String>{
  'account': 'i',
  'admin': 'admin',
  'announcements': 'announcements',
  'antennas': 'antennas',
  'app': 'app',
  'auth': 'auth',
  'blocking': 'blocking',
  'bubbleGame': 'bubble-game',
  'channels': 'channels',
  'charts': 'charts',
  'chat': 'chat',
  'clips': 'clips',
  'drive': 'drive',
  'emoji': 'emoji',
  'federation': 'federation',
  'flash': 'flash',
  'following': 'following',
  'gallery': 'gallery',
  'hashtags': 'hashtags',
  'invite': 'invite',
  'meta': 'meta',
  'mute': 'mute',
  'notes': 'notes',
  'notifications': 'notifications',
  'pages': 'pages',
  'renoteMute': 'renote-mute',
  'reversi': 'reversi',
  'roles': 'roles',
  'users': 'users',
};

const _dartKeywords = <String>{
  'abstract',
  'as',
  'assert',
  'async',
  'await',
  'base',
  'break',
  'case',
  'catch',
  'class',
  'const',
  'continue',
  'covariant',
  'default',
  'deferred',
  'do',
  'dynamic',
  'else',
  'enum',
  'export',
  'extends',
  'extension',
  'external',
  'factory',
  'false',
  'final',
  'finally',
  'for',
  'Function',
  'get',
  'hide',
  'if',
  'implements',
  'import',
  'in',
  'interface',
  'is',
  'late',
  'library',
  'mixin',
  'new',
  'null',
  'on',
  'operator',
  'part',
  'required',
  'rethrow',
  'return',
  'sealed',
  'set',
  'show',
  'static',
  'super',
  'switch',
  'sync',
  'this',
  'throw',
  'true',
  'try',
  'typedef',
  'var',
  'void',
  'when',
  'while',
  'with',
  'yield',
};

const _knownEnumNames = <String, String>{
  'MetaClientOptions.entrancePageStyle': 'MetaEntrancePageStyle',
  'MetaLite.noteSearchableScope': 'MetaNoteSearchableScope',
  'MetaLite.federation': 'MetaFederationMode',
  'RolePolicies.chatAvailability': 'ChatAvailability',
  'UserLite.onlineStatus': 'OnlineStatus',
  'UserDetailedNotMeOnly.followingVisibility': 'FollowingVisibility',
  'UserDetailedNotMeOnly.followersVisibility': 'FollowingVisibility',
  'UserDetailedNotMeOnly.chatScope': 'ChatScope',
  'UserDetailedNotMeOnly.notify': 'UserNotify',
  'MeDetailedOnly.twoFactorBackupCodesStock': 'TwoFactorBackupCodesStock',
  'Announcement.icon': 'AnnouncementIcon',
  'Announcement.display': 'AnnouncementDisplay',
  'followingVisibility': 'FollowingVisibility',
  'followersVisibility': 'FollowingVisibility',
  'chatScope': 'ChatScope',
  'notify': 'UserNotify',
  'twoFactorBackupCodesStock': 'TwoFactorBackupCodesStock',
  'onlineStatus': 'OnlineStatus',
};

void main(List<String> args) {
  String? specPath;
  var check = false;
  for (var i = 0; i < args.length; i++) {
    if (args[i] == '--spec' && i + 1 < args.length) {
      specPath = args[++i];
    } else if (args[i] == '--check') {
      check = true;
    }
  }
  if (specPath == null) {
    stderr.writeln(
      'Usage: dart run tool/generate_api.dart --spec <path> [--check]',
    );
    exit(64);
  }

  final file = File(specPath);
  final bytes = file.readAsBytesSync();
  final hash = sha256.convert(bytes).toString();
  if (hash != _expectedHash) {
    stderr.writeln('Unexpected OpenAPI hash: $hash');
    exit(1);
  }
  final spec = jsonDecode(utf8.decode(bytes)) as Map<String, dynamic>;
  final info = spec['info'] as Map<String, dynamic>;
  if (info['version'] != _expectedVersion) {
    stderr.writeln('Unexpected OpenAPI version: ${info['version']}');
    exit(1);
  }

  final generator = ApiGenerator(spec);
  generator.generate();

  if (check) {
    final changed = generator.changedFiles();
    if (changed.isNotEmpty) {
      stderr.writeln('Generated files are stale:');
      for (final path in changed) {
        stderr.writeln('  $path');
      }
      exit(1);
    }
  }
}

class ApiGenerator {
  ApiGenerator(this.spec)
    : schemas =
          (spec['components'] as Map<String, dynamic>)['schemas']
              as Map<String, dynamic>,
      paths = spec['paths'] as Map<String, dynamic> {
    components = ModelRegistry('components', schemas);
  }

  final Map<String, dynamic> spec;
  final Map<String, dynamic> schemas;
  final Map<String, dynamic> paths;
  final Map<String, String> _output = {};
  final List<_Operation> _operations = [];

  late final ModelRegistry components;
  final Map<String, String> _refTypes = {};
  final List<String> _groupOrder = const [
    'account',
    'admin',
    'announcements',
    'antennas',
    'app',
    'auth',
    'blocking',
    'bubbleGame',
    'channels',
    'charts',
    'chat',
    'clips',
    'drive',
    'emoji',
    'federation',
    'flash',
    'following',
    'gallery',
    'hashtags',
    'invite',
    'meta',
    'mute',
    'nonProductive',
    'notes',
    'notifications',
    'pages',
    'renoteMute',
    'reversi',
    'roles',
    'users',
  ];
  final Map<String, String> _groupClass = {
    'account': 'AccountApi',
    'admin': 'AdminApi',
    'announcements': 'AnnouncementsApi',
    'antennas': 'AntennasApi',
    'app': 'AppApi',
    'auth': 'AuthApi',
    'blocking': 'BlockingApi',
    'bubbleGame': 'BubbleGameApi',
    'channels': 'ChannelsApi',
    'charts': 'ChartsApi',
    'chat': 'ChatApi',
    'clips': 'ClipsApi',
    'drive': 'DriveApi',
    'emoji': 'EmojiApi',
    'federation': 'FederationApi',
    'flash': 'FlashApi',
    'following': 'FollowingApi',
    'gallery': 'GalleryApi',
    'hashtags': 'HashtagsApi',
    'invite': 'InviteApi',
    'meta': 'MetaApi',
    'mute': 'MuteApi',
    'nonProductive': 'NonProductiveApi',
    'notes': 'NotesApi',
    'notifications': 'NotificationsApi',
    'pages': 'PagesApi',
    'renoteMute': 'RenoteMuteApi',
    'reversi': 'ReversiApi',
    'roles': 'RolesApi',
    'users': 'UsersApi',
  };

  void generate() {
    _prepareComponentTypes();
    _generateComponents();
    _generateOperations();
    _generateManifest();
    _generateBarrels();
    _generateFixtures();
    _writeOutput();
  }

  List<String> changedFiles() {
    final changed = <String>[];
    final formatter = DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    );
    for (final entry in _output.entries) {
      final file = File('$_repoRoot/${entry.key}');
      final formatted = formatter.format(entry.value);
      if (!file.existsSync() || file.readAsStringSync() != formatted) {
        changed.add(entry.key);
      }
    }
    return changed;
  }

  void _writeOutput() {
    final formatter = DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    );
    for (final entry in _output.entries) {
      final file = File('$_repoRoot/${entry.key}');
      file.parent.createSync(recursive: true);
      file.writeAsStringSync(formatter.format(entry.value));
    }
  }

  void _prepareComponentTypes() {
    for (final name in schemas.keys) {
      if (name == 'Error') {
        continue;
      }
      _refTypes[name] = name;
      if (_isEnum(schemas[name])) {
        components.enums[name] = EnumDef(name, _enumValuesOf(schemas[name]));
      }
    }
  }

  bool _isEnum(Map<String, dynamic> schema) => schema['enum'] is List;

  void _generateComponents() {
    components.addBase(
      'User',
      'sealed class User {\n'
          '  const User._();\n\n'
          '  factory User.fromJson(Map<String, dynamic> json) {\n'
          "    if (json.containsKey('isAdmin')) return MeDetailed.fromJson(json);\n"
          "    if (json.containsKey('createdAt')) return UserDetailed.fromJson(json);\n"
          '    return UserLite.fromJson(json);\n'
          '  }\n'
          '\n'
          '  Map<String, dynamic> toJson();\n'
          '}',
    );
    components.addBase(
      'UserDetailed',
      'sealed class UserDetailed extends User {\n'
          '  const UserDetailed() : super._();\n\n'
          '  factory UserDetailed.fromJson(Map<String, dynamic> json) {\n'
          "    if (json.containsKey('isAdmin')) return MeDetailed.fromJson(json);\n"
          '    return UserDetailedNotMe.fromJson(json);\n'
          '  }\n'
          '}',
    );

    components.addBase(
      'RoleCondFormulaValue',
      'sealed class RoleCondFormulaValue {\n'
          '  factory RoleCondFormulaValue.fromJson(Map<String, dynamic> json) {\n'
          "    final type = json['type'];\n"
          '    switch (type) {\n'
          "      case 'and':\n"
          "      case 'or':\n"
          '        return RoleCondFormulaLogics.fromJson(json);\n'
          "      case 'not':\n"
          '        return RoleCondFormulaValueNot.fromJson(json);\n'
          "      case 'isLocal':\n"
          "      case 'isRemote':\n"
          '        return RoleCondFormulaValueIsLocalOrRemote.fromJson(json);\n'
          "      case 'isSuspended':\n"
          "      case 'isLocked':\n"
          "      case 'isBot':\n"
          "      case 'isCat':\n"
          "      case 'isExplorable':\n"
          '        return RoleCondFormulaValueUserSettingBooleanSchema.fromJson(json);\n'
          "      case 'roleAssignedTo':\n"
          '        return RoleCondFormulaValueAssignedRole.fromJson(json);\n'
          "      case 'createdLessThan':\n"
          "      case 'createdMoreThan':\n"
          '        return RoleCondFormulaValueCreated.fromJson(json);\n'
          "      case 'followersLessThanOrEq':\n"
          "      case 'followersMoreThanOrEq':\n"
          "      case 'followingLessThanOrEq':\n"
          "      case 'followingMoreThanOrEq':\n"
          "      case 'notesLessThanOrEq':\n"
          "      case 'notesMoreThanOrEq':\n"
          '        return RoleCondFormulaFollowersOrFollowingOrNotes.fromJson(json);\n'
          '      default:\n'
          "        throw FormatException('Unknown RoleCondFormulaValue type: \$type');\n"
          '    }\n'
          '  }\n'
          '\n'
          '  Map<String, dynamic> toJson();\n'
          '}',
    );

    // Create component class defs in a stable order.
    for (final name in schemas.keys) {
      if (name == 'Error' || name == 'User' || name == 'UserDetailed') {
        continue;
      }
      final schema = schemas[name] as Map<String, dynamic>;
      if (_isEnum(schema) || name == 'RoleCondFormulaValue') {
        continue;
      }
      if (name == 'Notification' || name == 'PageBlock') {
        continue;
      }
      if (schema['oneOf'] is List) {
        continue;
      }
      components.ensureClass(name, schema, freezed: true);
    }

    _addUserImplements();
    _addRoleCondFormulaImplements();
    _addNotification();
    _addPageBlock();

    final out = StringBuffer();
    out.writeln('// SPDX-License-Identifier: BSD-3-Clause');
    out.writeln();
    out.writeln('// GENERATED CODE - DO NOT EDIT BY HAND.');
    out.writeln();
    out.writeln('// ignore_for_file: constant_identifier_names');
    out.writeln();
    out.writeln("import 'package:freezed_annotation/freezed_annotation.dart';");
    out.writeln();
    out.writeln("import '../json.dart';");
    out.writeln();
    out.writeln("part 'components.freezed.dart';");
    out.writeln("part 'components.g.dart';");
    out.writeln();

    for (final entry in components.enums.entries) {
      out.writeln('enum ${entry.key} {');
      for (final pair in _enumEntries(entry.value)) {
        if (pair.value != pair.key) {
          out.writeln("  @JsonValue('${pair.key}')");
        }
        out.writeln('  ${pair.value},');
      }
      out.writeln('}');
      out.writeln();
    }
    for (final base in components.bases) {
      out.writeln(base);
      out.writeln();
    }
    for (final cls in components.classes.values) {
      out.write(components.renderClass(cls));
      out.writeln();
    }
    _output['lib/src/models/generated/components.dart'] = out.toString();
  }

  void _addUserImplements() {
    for (final name in ['UserLite', 'UserDetailedNotMe']) {
      final cls = components.classes[name];
      if (cls != null) {
        cls.implements = name == 'UserLite' ? 'User' : 'UserDetailed';
      }
    }
    final me = components.classes['MeDetailed'];
    if (me != null) {
      me.implements = 'UserDetailed';
    }
  }

  void _addRoleCondFormulaImplements() {
    for (final name in [
      'RoleCondFormulaLogics',
      'RoleCondFormulaValueNot',
      'RoleCondFormulaValueIsLocalOrRemote',
      'RoleCondFormulaValueUserSettingBooleanSchema',
      'RoleCondFormulaValueAssignedRole',
      'RoleCondFormulaValueCreated',
      'RoleCondFormulaFollowersOrFollowingOrNotes',
    ]) {
      components.classes[name]?.implements = 'RoleCondFormulaValue';
    }
  }

  void _addNotification() {
    final schema = schemas['Notification'] as Map<String, dynamic>;
    final variants = <String, String>{};
    final branchClasses = <ClassDef>[];
    for (final branch in (schema['oneOf'] as List)) {
      final map = branch as Map<String, dynamic>;
      final props = map['properties'] as Map<String, dynamic>;
      final typeSchema = props['type'] as Map<String, dynamic>;
      final type = (typeSchema['enum'] as List).first.toString();
      final className = 'Notification${_pascal(type)}';
      variants[type] = className;
      final cls = components.ensureClass(className, map, freezed: false);
      cls.extendsName = 'Notification';
      cls.forceRead = true;
      cls.forceWrite = true;
      cls.typeFieldString = true;
      _forceTypeString(cls);
      branchClasses.add(cls);
    }
    final b = StringBuffer()
      ..writeln('sealed class Notification {')
      ..writeln('  const Notification();')
      ..writeln()
      ..writeln('  factory Notification.fromJson(Map<String, dynamic> json) {')
      ..writeln("    final type = json['type'];")
      ..writeln('    switch (type) {');
    for (final entry in variants.entries) {
      b.writeln("      case '${entry.key}':");
      b.writeln('        return ${entry.value}.fromJson(json);');
    }
    b
      ..writeln('      default:')
      ..writeln(
        "        throw FormatException('Unknown Notification type: \$type');",
      )
      ..writeln('    }')
      ..writeln('  }')
      ..writeln()
      ..writeln('  Map<String, dynamic> toJson();')
      ..writeln('}');
    components.addBase('Notification', b.toString());
    // Re-add after base so variants are emitted after the base.
    for (final cls in branchClasses) {
      components.classes.remove(cls.name);
    }
    for (final cls in branchClasses) {
      components.classes[cls.name] = cls;
    }
  }

  void _forceTypeString(ClassDef cls) {
    _forceFieldType(cls, 'type', 'String');
  }

  void _forceFieldType(ClassDef cls, String name, String type) {
    cls.fields = cls.fields.map((field) {
      if (field.name != name) return field;
      return FieldDef(
        name: field.name,
        wireName: field.wireName,
        type: type,
        required: field.required,
        defaultValue: field.defaultValue,
        jsonKey: field.jsonKey,
      );
    }).toList();
  }

  void _addPageBlock() {
    final schema = schemas['PageBlock'] as Map<String, dynamic>;
    final variants = <String, String>{};
    final branchClasses = <ClassDef>[];
    for (final branch in (schema['oneOf'] as List)) {
      final map = branch as Map<String, dynamic>;
      final props = map['properties'] as Map<String, dynamic>;
      final type = ((props['type'] as Map<String, dynamic>)['enum'] as List)
          .first
          .toString();
      final className = 'PageBlock${_pascal(type)}';
      variants[type] = className;
      final cls = components.ensureClass(className, map, freezed: false);
      cls.extendsName = 'PageBlock';
      cls.forceRead = true;
      cls.forceWrite = true;
      cls.typeFieldString = true;
      _forceTypeString(cls);
      if (className == 'PageBlockSection') {
        _forceFieldType(cls, 'children', 'List<PageBlock>');
      }
      branchClasses.add(cls);
    }
    final b = StringBuffer()
      ..writeln('sealed class PageBlock {')
      ..writeln('  const PageBlock();')
      ..writeln()
      ..writeln('  factory PageBlock.fromJson(Map<String, dynamic> json) {')
      ..writeln("    final type = json['type'];")
      ..writeln('    switch (type) {');
    for (final entry in variants.entries) {
      b.writeln("      case '${entry.key}':");
      b.writeln('        return ${entry.value}.fromJson(json);');
    }
    b
      ..writeln('      default:')
      ..writeln(
        "        throw FormatException('Unknown PageBlock type: \$type');",
      )
      ..writeln('    }')
      ..writeln('  }')
      ..writeln()
      ..writeln('  Map<String, dynamic> toJson();')
      ..writeln('}');
    components.addBase('PageBlock', b.toString());
    for (final cls in branchClasses) {
      components.classes.remove(cls.name);
    }
    for (final cls in branchClasses) {
      components.classes[cls.name] = cls;
    }
  }

  String _groupForPath(String path) {
    final first = path.split('/').where((part) => part.isNotEmpty).first;
    if (first == 'v2') return 'admin';
    const mapping = <String, String>{
      'i': 'account',
      'my': 'account',
      'sw': 'account',
      'verify-email': 'account',
      'email-address': 'users',
      'username': 'users',
      'get-avatar-decorations': 'users',
      'pinned-users': 'users',
      'retention': 'users',
      'meta': 'meta',
      'get-online-users-count': 'meta',
      'fetch-rss': 'meta',
      'fetch-external-resources': 'meta',
      'endpoint': 'meta',
      'endpoints': 'meta',
      'ping': 'meta',
      'stats': 'meta',
      'server-info': 'meta',
      'promo': 'notes',
      'page-push': 'pages',
      'emoji': 'emoji',
      'emojis': 'emoji',
      'export-custom-emojis': 'emoji',
      'auth': 'auth',
      'miauth': 'auth',
      'request-reset-password': 'auth',
      'reset-password': 'auth',
      'ap': 'federation',
      'reset-db': 'nonProductive',
      'test': 'nonProductive',
    };
    return mapping[first] ?? _camelName(first);
  }

  String _methodForPath(String path, String group) {
    if (path == '/i') return 'me';
    if (path == '/meta') return 'get';
    final segments = path.split('/').where((part) => part.isNotEmpty).toList();
    if (group == 'admin' && segments.length >= 2 && segments[0] == 'v2') {
      return 'v2${_pascalSegments(segments.sublist(2))}';
    }
    if (group == 'admin' && segments.first == 'admin') {
      return _methodFrom(segments.sublist(1), group);
    }
    if (group == 'federation' && segments.first == 'ap') {
      return 'ap${_pascalSegments(segments.sublist(1))}';
    }
    if (group == 'auth' && segments.first == 'miauth') {
      return 'miAuth${_pascalSegments(segments.sublist(1))}';
    }
    if (group == 'auth' &&
        (segments.first == 'request-reset-password' ||
            segments.first == 'reset-password')) {
      return _camelName(segments.first);
    }
    if (group == 'account' && segments.first == 'i') {
      return _methodFrom(segments.sublist(1), group);
    }
    if (group == 'emoji' && segments.first == 'emojis') {
      return 'list';
    }
    final source = _sourceSegment[group];
    if (source != null && segments.first == source) {
      return _methodFrom(segments.sublist(1), group);
    }
    return _methodFrom(segments, group);
  }

  String _methodFrom(List<String> segments, String group) {
    if (segments.isEmpty) {
      return group == 'announcements' || group == 'emojis' ? 'list' : 'get';
    }
    return _camelSegments(segments);
  }

  String _camelSegments(List<String> segments) {
    final buffer = StringBuffer();
    for (var i = 0; i < segments.length; i++) {
      final value = _camelSegment(segments[i]);
      if (i == 0) {
        buffer.write(value);
      } else {
        buffer.write(
          value.isEmpty ? '' : value[0].toUpperCase() + value.substring(1),
        );
      }
    }
    var result = buffer.toString();
    if (_dartKeywords.contains(result)) {
      result = '${result}Value';
    }
    return result;
  }

  String _pascalSegments(List<String> segments) {
    return segments.map((segment) {
      final value = _camelSegment(segment);
      return value.isEmpty ? '' : value[0].toUpperCase() + value.substring(1);
    }).join();
  }

  String _camelSegment(String segment) {
    if (segment == '2fa') return 'twoFactor';
    final parts = segment
        .split(RegExp(r'[-_]'))
        .where((part) => part.isNotEmpty)
        .toList();
    if (parts.isEmpty) return '';
    return parts.first +
        parts
            .skip(1)
            .map((part) => part[0].toUpperCase() + part.substring(1))
            .join();
  }

  String _camelName(String value) {
    final parts = value
        .split(RegExp(r'[-_]'))
        .where((part) => part.isNotEmpty)
        .toList();
    if (parts.isEmpty) return value;
    return parts.first +
        parts
            .skip(1)
            .map((part) => part[0].toUpperCase() + part.substring(1))
            .join();
  }

  void _generateOperations() {
    final registries = <String, ModelRegistry>{
      for (final group in _groupOrder)
        group: ModelRegistry(group, schemas, knownEnums: components.enums),
    };
    final byGroup = <String, List<_Operation>>{
      for (final group in _groupOrder) group: [],
    };

    for (final entry in paths.entries) {
      final path = entry.key;
      final item = entry.value as Map<String, dynamic>;
      final op = (item['post'] ?? item['get']) as Map<String, dynamic>?;
      if (op == null) continue;
      final group = _groupForPath(path);
      final method = _methodForPath(path, group);
      final generated = !_skipPaths.contains(path);
      final operation = _Operation(
        path: path,
        group: group,
        method: method,
        requiresAuth: (op['security'] as List?)?.isNotEmpty ?? false,
        generated: generated,
      );
      final registry = registries[group]!;
      if (generated) {
        _buildRequest(operation, op, registry);
        _buildResponse(operation, op, registry);
      } else {
        operation.returnType = path == '/i' ? 'MeDetailed' : 'MetaLite';
        operation.responseKind = _ResponseKind.handWritten;
        operation.handWrittenMethod = path == '/i'
            ? 'account.me'
            : 'meta.get/detailed';
      }
      _operations.add(operation);
      byGroup[group]!.add(operation);
    }

    for (final group in _groupOrder) {
      _writeGroupModels(group, registries[group]!);
      _writeGroupApi(group, byGroup[group]!);
    }
  }

  void _buildRequest(
    _Operation operation,
    Map<String, dynamic> op,
    ModelRegistry registry,
  ) {
    final requestBody = op['requestBody'] as Map<String, dynamic>?;
    if (requestBody == null) return;
    final content = requestBody['content'] as Map<String, dynamic>?;
    if (content == null || content.isEmpty) return;
    final multipart = content.containsKey('multipart/form-data');
    final media =
        content[multipart ? 'multipart/form-data' : 'application/json'];
    if (media is! Map) return;
    var schema = (media as Map)['schema'];
    if (schema is! Map) return;
    final schemaMap = schema.cast<String, dynamic>();
    final base =
        '${_pascal(operation.group)}${_pascal(operation.method)}Request';
    operation.multipart = multipart;
    if (multipart) {
      final merged = <String, dynamic>{
        'type': 'object',
        'properties': <String, dynamic>{
          ...((schemaMap['properties'] as Map?) ?? {}),
          'fileName': <String, dynamic>{'type': 'string'},
        },
        'required': <String>[
          ...((schemaMap['required'] as List?) ?? []),
          'file',
          'fileName',
        ],
      };
      final cls = registry.ensureClass(
        base,
        merged,
        freezed: false,
        read: false,
        write: true,
      );
      _forceFieldType(cls, 'file', 'List<int>');
      operation.requestType = cls.name;
      operation.requestKind = _RequestKind.multipart;
      final properties = schemaMap['properties'] as Map? ?? {};
      for (final key in properties.keys) {
        final wire = key.toString();
        if (wire == 'file') continue;
        operation.multipartFields[_fieldNameFor(wire)] = wire;
      }
      return;
    }

    if (schemaMap['anyOf'] is List || _hasAnyOf(schemaMap)) {
      final union = _buildAnyOfRequest(operation, schemaMap, registry, base);
      operation.requestType = union;
      operation.requestKind = _RequestKind.object;
      return;
    }

    final cls = registry.ensureClass(
      base,
      schemaMap,
      freezed: false,
      read: false,
      write: true,
    );
    operation.requestType = cls.name;
    operation.requestKind = _RequestKind.object;
  }

  String _buildAnyOfRequest(
    _Operation operation,
    Map<String, dynamic> schema,
    ModelRegistry registry,
    String base,
  ) {
    final branches = <Map<String, dynamic>>[];
    final common = <Map<String, dynamic>>[];
    if (schema['anyOf'] is List) {
      branches.addAll(
        (schema['anyOf'] as List).whereType<Map>().map(
          (value) => value.cast<String, dynamic>(),
        ),
      );
    }
    if (schema['allOf'] is List) {
      for (final part in schema['allOf'] as List) {
        if (part is! Map) continue;
        final map = part.cast<String, dynamic>();
        if (map['anyOf'] is List) {
          branches.addAll(
            (map['anyOf'] as List).whereType<Map>().map(
              (value) => value.cast<String, dynamic>(),
            ),
          );
        } else {
          common.add(map);
        }
      }
    }
    for (var index = 0; index < branches.length; index++) {
      final branch = branches[index];
      final branchRequired = (branch['required'] as List?) ?? const [];
      final suffix = branchRequired.isEmpty
          ? 'Branch${index + 1}'
          : _pascal(branchRequired.first.toString());
      final name = '${base}By$suffix';
      final properties = <String, dynamic>{};
      final required = <String>[];
      for (final part in common) {
        final props = part['properties'];
        if (props is Map) properties.addAll(props.cast<String, dynamic>());
        final req = part['required'];
        if (req is List) required.addAll(req.map((value) => value.toString()));
      }
      final branchProps = branch['properties'];
      if (branchProps is Map) {
        properties.addAll(branchProps.cast<String, dynamic>());
      }
      required.addAll(branchRequired.map((value) => value.toString()));
      final cls = registry.ensureClass(
        name,
        <String, dynamic>{
          'type': 'object',
          'properties': properties,
          'required': required,
        },
        freezed: false,
        read: false,
        write: true,
      );
      cls.extendsName = base;
    }
    final buffer = StringBuffer()
      ..writeln('sealed class $base {')
      ..writeln('  const $base();')
      ..writeln()
      ..writeln('  Map<String, dynamic> toJson();')
      ..writeln('}');
    registry.addBase(base, buffer.toString());
    return base;
  }

  bool _hasAnyOf(Map<String, dynamic> schema) {
    final allOf = schema['allOf'];
    if (allOf is! List) return false;
    return allOf.any((part) => part is Map && part['anyOf'] is List);
  }

  void _buildResponse(
    _Operation operation,
    Map<String, dynamic> op,
    ModelRegistry registry,
  ) {
    final response = op['responses']?['200'] as Map<String, dynamic>?;
    final content =
        response?['content']?['application/json'] as Map<String, dynamic>?;
    final schema = content?['schema'];
    if (schema is! Map) {
      operation.returnType = 'void';
      operation.responseKind = _ResponseKind.voidType;
      return;
    }
    final map = schema.cast<String, dynamic>();
    final base =
        '${_pascal(operation.group)}${_pascal(operation.method)}Response';
    final ref = map[r'$ref'];
    if (ref is String) {
      final type = ref.split('/').last;
      operation.returnType = type;
      operation.responseKind = _ResponseKind.model;
      operation.parserType = type;
      return;
    }
    final allOf = map['allOf'];
    if (allOf is List) {
      final cls = registry.ensureClass(
        base,
        map,
        freezed: false,
        read: true,
        write: true,
      );
      operation.returnType = cls.name;
      operation.responseKind = _ResponseKind.model;
      operation.parserType = cls.name;
      return;
    }
    if (map['oneOf'] is List) {
      _buildOneOfResponse(operation, map, registry, base);
      return;
    }
    final types = map['type'];
    final nullable = types is List && types.contains('null');
    if (types == 'array' ||
        (types is List && types.any((value) => value == 'array'))) {
      _buildArrayResponse(operation, map, registry, base);
      return;
    }
    if (types == 'object' ||
        map['properties'] is Map ||
        (types is List && types.any((value) => value == 'object'))) {
      final props = map['properties'];
      if (props is! Map || props.isEmpty) {
        operation.returnType = nullable ? 'JsonMap?' : 'JsonMap';
        operation.responseKind = nullable
            ? _ResponseKind.nullableMap
            : _ResponseKind.map;
        return;
      }
      final cls = registry.ensureClass(
        base,
        map,
        freezed: false,
        read: true,
        write: true,
      );
      operation.returnType = nullable ? '${cls.name}?' : cls.name;
      operation.responseKind = nullable
          ? _ResponseKind.nullableModel
          : _ResponseKind.model;
      operation.parserType = cls.name;
      return;
    }
    if (types == 'boolean') {
      operation.returnType = 'bool';
      operation.responseKind = _ResponseKind.boolType;
      return;
    }
    operation.returnType = 'JsonMap';
    operation.responseKind = _ResponseKind.map;
  }

  void _buildArrayResponse(
    _Operation operation,
    Map<String, dynamic> schema,
    ModelRegistry registry,
    String base,
  ) {
    final items = schema['items'];
    if (items is! Map) {
      operation.returnType = 'List<Object>';
      operation.responseKind = _ResponseKind.listPrimitive;
      operation.itemType = 'Object';
      return;
    }
    final item = items.cast<String, dynamic>();
    final ref = item[r'$ref'];
    if (ref is String) {
      final type = ref.split('/').last;
      operation.returnType = 'List<$type>';
      operation.responseKind = _ResponseKind.listModel;
      operation.itemType = type;
      return;
    }
    if (item['type'] == 'object' && item['properties'] is Map) {
      final cls = registry.ensureClass(
        '${base}Item',
        item,
        freezed: false,
        read: true,
        write: true,
      );
      operation.returnType = 'List<${cls.name}>';
      operation.responseKind = _ResponseKind.listModel;
      operation.itemType = cls.name;
      return;
    }
    if (item['type'] == 'array') {
      final inner = item['items'] as Map?;
      final innerType = inner?['type'] == 'string' ? 'String' : 'Object';
      operation.returnType = 'List<List<$innerType>>';
      operation.responseKind = _ResponseKind.listPrimitive;
      operation.itemType = 'List<$innerType>';
      return;
    }
    final type = switch (item['type']) {
      'string' => 'String',
      'integer' => 'int',
      'number' => 'num',
      'boolean' => 'bool',
      _ => 'Object',
    };
    operation.returnType = 'List<$type>';
    operation.responseKind = _ResponseKind.listPrimitive;
    operation.itemType = type;
  }

  void _buildOneOfResponse(
    _Operation operation,
    Map<String, dynamic> schema,
    ModelRegistry registry,
    String base,
  ) {
    final branches = (schema['oneOf'] as List)
        .whereType<Map>()
        .map((branch) => branch.cast<String, dynamic>())
        .toList();
    final nonNull = branches
        .where((branch) => branch['type'] != 'null')
        .toList();
    if (nonNull.length == 1 && branches.length == 2) {
      final target = nonNull.single;
      final ref = target[r'$ref'];
      if (ref is String) {
        final type = ref.split('/').last;
        operation.returnType = '$type?';
        operation.responseKind = _ResponseKind.nullableModel;
        operation.parserType = type;
        return;
      }
      final cls = registry.ensureClass(
        base,
        target,
        freezed: false,
        read: true,
        write: true,
      );
      operation.returnType = '${cls.name}?';
      operation.responseKind = _ResponseKind.nullableModel;
      operation.parserType = cls.name;
      return;
    }

    final hasArray = branches.any((branch) => branch['type'] == 'array');
    final discriminatorBranches = <String, String>{};
    final noDiscriminator = <String>[];
    final baseBuffer = StringBuffer()
      ..writeln('sealed class $base {')
      ..writeln('  const $base();')
      ..writeln()
      ..writeln(
        '  factory $base.fromJson(${hasArray ? 'Object? data' : 'Map<String, dynamic> data'}) {',
      );
    if (!hasArray) {
      baseBuffer.writeln('    final map = data;');
    }
    final mapDispatch = StringBuffer();
    for (var index = 0; index < branches.length; index++) {
      final branch = branches[index];
      final type = branch['type'];
      final ref = branch[r'$ref'];
      if (type == 'array') {
        final item = (branch['items'] as Map?)?.cast<String, dynamic>() ?? {};
        final info = _arrayItemInfo(item, '${base}ListItem', registry);
        final wrapper = '${base}List';
        final cls = registry.ensureClass(
          wrapper,
          <String, dynamic>{
            'type': 'object',
            'properties': {'items': branch},
            'required': ['items'],
          },
          freezed: false,
          read: true,
          write: true,
        );
        cls.extendsName = base;
        _forceFieldType(cls, 'items', 'List<${info.type}>');
        final listExpr = _arrayFromDataExpression(info);
        baseBuffer.writeln('    if (data is List) {');
        baseBuffer.writeln('      return $wrapper(items: $listExpr);');
        baseBuffer.writeln('    }');
        continue;
      }
      if (ref is String) {
        final refName = ref.split('/').last;
        final wrapper = '$base$refName';
        final cls = registry.ensureClass(
          wrapper,
          <String, dynamic>{
            'type': 'object',
            'properties': {
              'value': {'\$ref': ref},
            },
            'required': ['value'],
          },
          freezed: false,
          read: true,
          write: true,
        );
        cls.extendsName = base;
        mapDispatch.writeln(
          '    return $wrapper(value: $refName.fromJson(map));',
        );
        continue;
      }
      if (branch['properties'] is Map) {
        final typeValue = _discriminatorValue(branch);
        final name = typeValue == null
            ? '$base${index == 0 ? 'Object' : 'Object${index + 1}'}'
            : '$base${_pascal(typeValue)}';
        final cls = registry.ensureClass(
          name,
          branch,
          freezed: false,
          read: true,
          write: true,
        );
        cls.extendsName = base;
        if (typeValue != null) {
          discriminatorBranches[typeValue] = name;
        } else {
          noDiscriminator.add(name);
          mapDispatch.writeln('    return $name.fromJson(map);');
        }
      }
    }
    if (hasArray) {
      baseBuffer.writeln(
        '    final map = Map<String, dynamic>.from(data as Map);',
      );
    }
    if (discriminatorBranches.isNotEmpty) {
      baseBuffer.writeln("    switch (map['type']) {");
      for (final entry in discriminatorBranches.entries) {
        baseBuffer.writeln("      case '${entry.key}':");
        baseBuffer.writeln('        return ${entry.value}.fromJson(map);');
      }
      baseBuffer.writeln('      default:');
      baseBuffer.writeln(
        "        throw FormatException('Unknown $base type: \${map['type']}');",
      );
      baseBuffer.writeln('    }');
    } else if (mapDispatch.isNotEmpty) {
      baseBuffer.write(mapDispatch);
    } else {
      baseBuffer.writeln("    throw FormatException('Unknown $base value.');");
    }
    baseBuffer
      ..writeln('  }')
      ..writeln()
      ..writeln('  Map<String, dynamic> toJson();')
      ..writeln('}');
    registry.addBase(base, baseBuffer.toString());
    operation.returnType = base;
    operation.responseKind = _ResponseKind.union;
    operation.parserType = base;
    operation.unionHasArray = hasArray;
  }

  _ArrayItemInfo _arrayItemInfo(
    Map<String, dynamic> item,
    String suggested,
    ModelRegistry registry,
  ) {
    final ref = item[r'$ref'];
    if (ref is String) {
      return _ArrayItemInfo(ref.split('/').last, true);
    }
    if (item['type'] == 'object' && item['properties'] is Map) {
      final cls = registry.ensureClass(
        suggested,
        item,
        freezed: false,
        read: true,
        write: true,
      );
      return _ArrayItemInfo(cls.name, true);
    }
    if (item['type'] == 'array') {
      final inner = item['items'] as Map?;
      final type = switch (inner?['type']) {
        'string' => 'String',
        'integer' => 'int',
        'number' => 'num',
        'boolean' => 'bool',
        _ => 'Object',
      };
      return _ArrayItemInfo('List<$type>', false);
    }
    final type = switch (item['type']) {
      'string' => 'String',
      'integer' => 'int',
      'number' => 'num',
      'boolean' => 'bool',
      _ => 'Object',
    };
    return _ArrayItemInfo(type, false);
  }

  String _arrayFromDataExpression(_ArrayItemInfo info) {
    if (info.isModel) {
      return 'data.map((e) => ${info.type}.fromJson(Map<String, dynamic>.from(e as Map))).toList()';
    }
    if (info.type.startsWith('List<')) {
      final inner = info.type.substring(5, info.type.length - 1);
      return 'data.map((e) => (e as List).cast<$inner>()).toList()';
    }
    return 'data.cast<${info.type}>()';
  }

  String? _discriminatorValue(Map<String, dynamic> branch) {
    final props = branch['properties'];
    if (props is! Map) return null;
    final type = props['type'];
    if (type is! Map) return null;
    final values = type['enum'];
    if (values is! List || values.length != 1) return null;
    return values.first.toString();
  }

  void _writeGroupModels(String group, ModelRegistry registry) {
    final out = StringBuffer()
      ..writeln('// SPDX-License-Identifier: BSD-3-Clause')
      ..writeln()
      ..writeln('// GENERATED CODE - DO NOT EDIT BY HAND.')
      ..writeln()
      ..writeln("import 'package:freezed_annotation/freezed_annotation.dart';")
      ..writeln()
      ..writeln("import '../../models/generated/generated.dart';")
      ..writeln("import '../../models/json.dart';")
      ..writeln()
      ..writeln("part '${group}_models.g.dart';")
      ..writeln();
    for (final entry in registry.enums.entries) {
      out.writeln('enum ${entry.key} {');
      for (final pair in _enumEntries(entry.value)) {
        if (pair.value != pair.key) {
          out.writeln("  @JsonValue('${pair.key}')");
        }
        out.writeln('  ${pair.value},');
      }
      out.writeln('}');
      out.writeln();
    }
    for (final base in registry.bases) {
      out.writeln(base);
      out.writeln();
    }
    for (final cls in registry.classes.values) {
      out.write(registry.renderClass(cls));
      out.writeln();
    }
    _output['lib/src/api/generated/${group}_models.dart'] = out.toString();
  }

  void _writeGroupApi(String group, List<_Operation> operations) {
    final out = StringBuffer()
      ..writeln('// SPDX-License-Identifier: BSD-3-Clause')
      ..writeln()
      ..writeln('// GENERATED CODE - DO NOT EDIT BY HAND.')
      ..writeln()
      ..writeln("import 'package:dio/dio.dart';")
      ..writeln()
      ..writeln("import '../../client.dart';")
      ..writeln("import '../../models/generated/generated.dart';")
      ..writeln("import '../../models/json.dart';")
      ..writeln("import '${group}_models.dart';")
      ..writeln()
      ..writeln('class ${_groupClass[group]} {')
      ..writeln('  ${_groupClass[group]}(this.client);')
      ..writeln()
      ..writeln('  final MisskeyClient client;');
    for (final op in operations) {
      if (!op.generated) continue;
      out.writeln();
      out.writeln(_methodSource(op));
    }
    out.writeln('}');
    _output['lib/src/api/generated/${group}_api.dart'] = out.toString();
  }

  String _methodSource(_Operation op) {
    final returnType = op.returnType;
    final request = op.requestType;
    final endpoint = op.path.substring(1);
    final body = request == null ? null : 'body: request.toJson(),';
    final prefix = request == null ? '' : '$request request, ';
    final b = StringBuffer()
      ..writeln(
        '  Future<$returnType> ${op.method}($prefix{CancelToken? cancelToken}) {',
      );
    if (op.multipart) {
      b.writeln('    final form = FormData();');
      b.writeln(
        "    form.files.add(MapEntry('file', MultipartFile.fromBytes(request.file, filename: request.fileName)));",
      );
      for (final entry in op.multipartFields.entries) {
        b.writeln(
          "    if (request.${entry.key} != null) form.fields.add(MapEntry('${entry.value}', '\${request.${entry.key}}'));",
        );
      }
      b.writeln('    return client.postMultipartModel<$returnType>(');
      b.writeln("      '$endpoint',");
      b.writeln('      body: form,');
      b.writeln('      parser: $returnType.fromJson,');
      b.writeln('      cancelToken: cancelToken,');
      b.writeln('    );');
      b.writeln('  }');
      return b.toString();
    }
    final call = switch (op.responseKind) {
      _ResponseKind.voidType =>
        "postVoid('$endpoint', ${body ?? ''}cancelToken: cancelToken)",
      _ResponseKind.map =>
        "postMap('$endpoint', ${body ?? ''}cancelToken: cancelToken)",
      _ResponseKind.nullableMap =>
        "postNullableModel<JsonMap>('$endpoint', ${body ?? ''}parser: (json) => json, cancelToken: cancelToken)",
      _ResponseKind.boolType =>
        "postParsed<bool>('$endpoint', ${body ?? ''}parser: (data) => data as bool, cancelToken: cancelToken)",
      _ResponseKind.listPrimitive =>
        "postParsed<$returnType>('$endpoint', ${body ?? ''}parser: ${_listParser(op)}, cancelToken: cancelToken)",
      _ResponseKind.listModel =>
        "postList<${op.itemType}>('$endpoint', ${body ?? ''}itemParser: ${op.itemType}.fromJson, cancelToken: cancelToken)",
      _ResponseKind.nullableModel =>
        "postNullableModel<${op.parserType}>('$endpoint', ${body ?? ''}parser: ${op.parserType}.fromJson, cancelToken: cancelToken)",
      _ResponseKind.model =>
        "postModel<${op.parserType}>('$endpoint', ${body ?? ''}parser: ${op.parserType}.fromJson, cancelToken: cancelToken)",
      _ResponseKind.union =>
        op.unionHasArray
            ? "postParsed<${op.parserType}>('$endpoint', ${body ?? ''}parser: ${op.parserType}.fromJson, cancelToken: cancelToken)"
            : "postModel<${op.parserType}>('$endpoint', ${body ?? ''}parser: ${op.parserType}.fromJson, cancelToken: cancelToken)",
      _ResponseKind.handWritten =>
        "postModel<${op.returnType}>('$endpoint', ${body ?? ''}parser: ${op.returnType}.fromJson, cancelToken: cancelToken)",
      _ =>
        "postParsed<$returnType>('$endpoint', ${body ?? ''}parser: (data) => data as $returnType, cancelToken: cancelToken)",
    };
    b.writeln('    return client.$call;');
    b.writeln('  }');
    return b.toString();
  }

  String _listParser(_Operation op) {
    final item = op.itemType ?? 'Object';
    if (item == 'Object') return '(data) => (data as List).cast<Object>()';
    if (item == 'String') return '(data) => (data as List).cast<String>()';
    if (item == 'int') return '(data) => (data as List).cast<int>()';
    if (item == 'num') return '(data) => (data as List).cast<num>()';
    if (item.startsWith('List<')) {
      final inner = item.substring(5, item.length - 1);
      return '(data) => (data as List).map((e) => (e as List).cast<$inner>()).toList()';
    }
    return '(data) => (data as List).cast<$item>()';
  }

  void _generateManifest() {
    final out = StringBuffer()
      ..writeln('// SPDX-License-Identifier: BSD-3-Clause')
      ..writeln()
      ..writeln('// GENERATED CODE - DO NOT EDIT BY HAND.')
      ..writeln()
      ..writeln('class EndpointManifest {')
      ..writeln('  const EndpointManifest({')
      ..writeln('    required this.path,')
      ..writeln('    required this.group,')
      ..writeln('    required this.method,')
      ..writeln('    required this.requiresAuth,')
      ..writeln('    required this.requestType,')
      ..writeln('    required this.responseType,')
      ..writeln('    required this.multipart,')
      ..writeln('    this.handWrittenMethod,')
      ..writeln('  });')
      ..writeln()
      ..writeln('  final String path;')
      ..writeln('  final String group;')
      ..writeln('  final String method;')
      ..writeln('  final bool requiresAuth;')
      ..writeln('  final String? requestType;')
      ..writeln('  final String responseType;')
      ..writeln('  final bool multipart;')
      ..writeln('  final String? handWrittenMethod;')
      ..writeln('}')
      ..writeln()
      ..writeln('const List<EndpointManifest> misskeyEndpoints = [');
    for (final op in _operations) {
      out.writeln('  EndpointManifest(');
      out.writeln("    path: '${op.path}',");
      out.writeln("    group: '${op.group}',");
      out.writeln("    method: '${op.method}',");
      out.writeln('    requiresAuth: ${op.requiresAuth},');
      out.writeln(
        "    requestType: ${op.requestType == null ? 'null' : "'${op.requestType}'"},",
      );
      out.writeln("    responseType: '${op.returnType}',");
      out.writeln('    multipart: ${op.multipart},');
      out.writeln(
        "    handWrittenMethod: ${op.handWrittenMethod == null ? 'null' : "'${op.handWrittenMethod}'"},",
      );
      out.writeln('  ),');
    }
    out
      ..writeln('];')
      ..writeln()
      ..writeln('const List<String> misskeyComponentSchemas = [');
    for (final name in schemas.keys) {
      if (name == 'Error') continue;
      out.writeln("  '$name',");
    }
    out.writeln('];');
    _output['lib/src/api/generated/api_manifest.dart'] = out.toString();
  }

  void _generateBarrels() {
    _output['lib/src/models/generated/generated.dart'] =
        "// SPDX-License-Identifier: BSD-3-Clause\n\n"
        "export 'components.dart';\n";
    final api = StringBuffer()
      ..writeln('// SPDX-License-Identifier: BSD-3-Clause')
      ..writeln()
      ..writeln('// GENERATED CODE - DO NOT EDIT BY HAND.')
      ..writeln();
    for (final group in _groupOrder) {
      api.writeln("export '${group}_api.dart';");
      api.writeln("export '${group}_models.dart';");
    }
    api.writeln("export 'api_manifest.dart';");
    _output['lib/src/api/generated/generated.dart'] = api.toString();
  }

  void _generateFixtures() {
    final fixtures = <String, dynamic>{};
    for (final name in schemas.keys) {
      if (name == 'Error') continue;
      fixtures[name] = _sampleFor(
        schemas[name] as Map<String, dynamic>,
        name,
        <String>{},
      );
    }
    final out = StringBuffer()
      ..writeln('// SPDX-License-Identifier: BSD-3-Clause')
      ..writeln()
      ..writeln('// GENERATED CODE - DO NOT EDIT BY HAND.')
      ..writeln()
      ..writeln('const Map<String, dynamic> generatedComponentFixtures = ')
      ..writeln(jsonEncode(fixtures))
      ..writeln(';');
    _output['test/support/generated_fixtures.dart'] = out.toString();
  }

  Object? _sampleFor(
    Map<String, dynamic> schema,
    String name,
    Set<String> stack,
  ) {
    final ref = schema[r'$ref'];
    if (ref is String) {
      final refName = ref.split('/').last;
      if (stack.contains(refName) || stack.length > 5) {
        return <String, dynamic>{};
      }
      final target = schemas[refName];
      if (target is! Map<String, dynamic>) return <String, dynamic>{};
      return _sampleFor(target, refName, {...stack, refName});
    }
    final types = schema['type'];
    if (types is List) {
      final nonNull = types.where((value) => value != 'null').toList();
      if (nonNull.isEmpty) return null;
      final inner = Map<String, dynamic>.from(schema)..['type'] = nonNull.first;
      return _sampleFor(inner, name, stack);
    }
    if (schema['enum'] is List) {
      final values = _enumValuesOf(schema);
      return values.isEmpty ? null : values.first;
    }
    if (schema['oneOf'] is List) {
      for (final branch in schema['oneOf'] as List) {
        if (branch is Map && branch['type'] != 'null') {
          return _sampleFor(branch.cast<String, dynamic>(), name, stack);
        }
      }
      return null;
    }
    if (schema['anyOf'] is List) {
      for (final branch in schema['anyOf'] as List) {
        if (branch is Map) {
          return _sampleFor(branch.cast<String, dynamic>(), name, stack);
        }
      }
      return null;
    }
    if (schema['allOf'] is List) {
      final merged = <String, dynamic>{};
      for (final part in schema['allOf'] as List) {
        if (part is! Map) continue;
        final sample = _sampleFor(part.cast<String, dynamic>(), name, stack);
        if (sample is Map) merged.addAll(sample.cast<String, dynamic>());
      }
      return merged;
    }
    if (types == 'array') return <dynamic>[];
    if (types == 'object' || schema['properties'] is Map) {
      final properties = schema['properties'];
      if (properties is! Map) return <String, dynamic>{};
      final required = (schema['required'] as List?) ?? const [];
      final out = <String, dynamic>{};
      for (final key in required) {
        final property = properties[key];
        if (property is Map) {
          out[key.toString()] = _sampleFor(
            property.cast<String, dynamic>(),
            '${name}_$key',
            stack,
          );
        }
      }
      return out;
    }
    if (types == 'boolean') return false;
    if (types == 'integer') return 0;
    if (types == 'number') return 0;
    if (types == 'string') {
      return schema['format'] == 'date-time' ? '2026-01-01T00:00:00.000Z' : 'x';
    }
    return null;
  }

  String _fieldNameFor(String wire) {
    return switch (wire) {
      'default' => 'defaultValue',
      'on' => 'onValue',
      'var' => 'varValue',
      _ => _safeIdentifier(wire),
    };
  }

  String _pascal(String value) {
    final parts = value
        .split(RegExp(r'[^A-Za-z0-9]+'))
        .where((part) => part.isNotEmpty);
    return parts
        .map((part) => part[0].toUpperCase() + part.substring(1))
        .join();
  }
}

class _ArrayItemInfo {
  const _ArrayItemInfo(this.type, this.isModel);

  final String type;
  final bool isModel;
}

class _Operation {
  _Operation({
    required this.path,
    required this.group,
    required this.method,
    required this.requiresAuth,
    required this.generated,
  });

  final String path;
  final String group;
  final String method;
  final bool requiresAuth;
  final bool generated;
  bool multipart = false;
  String returnType = 'void';
  String? requestType;
  String? parserType;
  String? itemType;
  String? handWrittenMethod;
  bool unionHasArray = false;
  _RequestKind requestKind = _RequestKind.none;
  _ResponseKind responseKind = _ResponseKind.voidType;
  final Map<String, String> multipartFields = {};
}

enum _RequestKind { none, object, multipart }

enum _ResponseKind {
  voidType,
  model,
  nullableModel,
  listModel,
  listPrimitive,
  union,
  map,
  nullableMap,
  boolType,
  handWritten,
}

List<String> _enumValuesOf(Map<String, dynamic> schema) {
  final seen = <String>{};
  return (schema['enum'] as List)
      .where((value) => value != null)
      .map((value) => value.toString())
      .where(seen.add)
      .toList();
}

List<MapEntry<String, String>> _enumEntries(EnumDef def) {
  final seen = <String>{};
  final out = <MapEntry<String, String>>[];
  for (final wire in def.values) {
    var name = _enumDartName(wire);
    var candidate = name;
    var suffix = 1;
    while (!seen.add(candidate)) {
      suffix++;
      candidate = '$name$suffix';
    }
    out.add(MapEntry(wire, candidate));
  }
  return out;
}

String _enumDartName(String value) {
  if (RegExp(r'^[A-Za-z_][A-Za-z0-9_]*$').hasMatch(value) &&
      !_dartKeywords.contains(value)) {
    return value;
  }
  var prefix = '';
  var source = value;
  if (source.startsWith('+')) {
    prefix = 'plus';
    source = source.substring(1);
  } else if (source.startsWith('-')) {
    prefix = 'minus';
    source = source.substring(1);
  }
  final parts = source
      .split(RegExp(r'[^A-Za-z0-9]+'))
      .where((part) => part.isNotEmpty)
      .toList();
  final body = parts.isEmpty
      ? 'value'
      : parts.first +
            parts.skip(1).map((part) {
              return part[0].toUpperCase() + part.substring(1);
            }).join();
  var result = '$prefix${body.isEmpty ? 'value' : body}';
  if (result.isEmpty || RegExp(r'^[0-9]').hasMatch(result)) {
    result = 'v$result';
  }
  if (_dartKeywords.contains(result)) {
    result = '${result}_';
  }
  return result;
}

String _safeIdentifier(String value) {
  var result = value.replaceAll(RegExp(r'[^A-Za-z0-9_]'), '_');
  if (result.isEmpty || RegExp(r'^[0-9]').hasMatch(result)) {
    result = 'v$result';
  }
  const reserved = {
    'abstract',
    'as',
    'assert',
    'async',
    'await',
    'base',
    'break',
    'case',
    'catch',
    'class',
    'const',
    'continue',
    'covariant',
    'default',
    'deferred',
    'do',
    'dynamic',
    'else',
    'enum',
    'export',
    'extends',
    'extension',
    'external',
    'factory',
    'false',
    'final',
    'finally',
    'for',
    'Function',
    'get',
    'hide',
    'if',
    'implements',
    'import',
    'in',
    'interface',
    'is',
    'late',
    'library',
    'mixin',
    'new',
    'null',
    'on',
    'operator',
    'part',
    'required',
    'rethrow',
    'return',
    'sealed',
    'set',
    'show',
    'static',
    'super',
    'switch',
    'sync',
    'this',
    'throw',
    'true',
    'try',
    'typedef',
    'var',
    'void',
    'when',
    'while',
    'with',
    'yield',
  };
  if (reserved.contains(result)) {
    result = '${result}_';
  }
  return result;
}

class EnumDef {
  EnumDef(this.name, this.values);
  final String name;
  final List<String> values;
}

class FieldDef {
  FieldDef({
    required this.name,
    required this.wireName,
    required this.type,
    required this.required,
    this.defaultValue,
    this.jsonKey,
  });

  final String name;
  final String wireName;
  final String type;
  final bool required;
  final String? defaultValue;
  final String? jsonKey;
}

class ClassDef {
  ClassDef({
    required this.name,
    required this.schema,
    required this.freezed,
    this.read = true,
    this.write = true,
    this.implements,
    this.extendsName,
  });

  final String name;
  final Map<String, dynamic> schema;
  final bool freezed;
  bool read;
  bool write;
  String? implements;
  String? extendsName;
  bool forceRead = false;
  bool forceWrite = false;
  bool typeFieldString = false;
  final Map<String, String> fieldTypeOverrides = {};
  List<FieldDef>? _fields;

  List<FieldDef> get fields => _fields ??= [];
  set fields(List<FieldDef> value) => _fields = value;
}

class ModelRegistry {
  ModelRegistry(this.filePrefix, this.schemas, {this.knownEnums = const {}});

  final String filePrefix;
  final Map<String, dynamic> schemas;
  final Map<String, EnumDef> knownEnums;
  final Map<String, ClassDef> classes = LinkedHashMap();
  final Map<String, EnumDef> enums = LinkedHashMap();
  final List<String> bases = [];
  final Set<String> _baseNames = {};
  final Set<String> _usedNames = {};
  int _suffix = 0;

  void addBase(String name, String body) {
    if (_baseNames.add(name)) {
      bases.add(body);
      _usedNames.add(name);
    }
  }

  ClassDef ensureClass(
    String suggested,
    Map<String, dynamic> schema, {
    required bool freezed,
    bool read = true,
    bool write = true,
  }) {
    final existing = classes[suggested];
    if (existing != null) {
      existing.read = existing.read || read;
      existing.write = existing.write || write;
      return existing;
    }
    final name = _uniqueName(suggested);
    final cls = ClassDef(
      name: name,
      schema: schema,
      freezed: freezed,
      read: read,
      write: write,
    );
    cls.fields = _collectFields(cls);
    classes[name] = cls;
    return cls;
  }

  String uniqueName(String suggested) => _uniqueName(suggested);

  String _uniqueName(String base) {
    if (!_usedNames.contains(base)) {
      _usedNames.add(base);
      return base;
    }
    var candidate = '${base}Value';
    if (!_usedNames.contains(candidate)) {
      _usedNames.add(candidate);
      return candidate;
    }
    do {
      _suffix++;
      candidate = '$base${_suffix + 1}';
    } while (_usedNames.contains(candidate));
    _usedNames.add(candidate);
    return candidate;
  }

  List<FieldDef> _collectFields(ClassDef cls) {
    final properties = <String, Map<String, dynamic>>{};
    final required = <String>{};
    _flattenObject(cls.schema, properties, required);
    final out = <FieldDef>[];
    for (final entry in properties.entries) {
      final key = entry.key;
      final schema = entry.value;
      final isRequired = required.contains(key);
      var suggested = '${cls.name}${_pascal(key)}';
      final enumName =
          _knownEnumNames['${cls.name}.$key'] ?? _knownEnumNames[key];
      if (enumName != null) {
        suggested = enumName;
      }
      if (cls.name == 'Role' && key == 'policies') {
        final additional = schema['additionalProperties'];
        final anyOf = additional is Map ? additional['anyOf'] : null;
        final policySchema = anyOf is List && anyOf.isNotEmpty
            ? (anyOf.first as Map).cast<String, dynamic>()
            : <String, dynamic>{'type': 'object'};
        final policy = ensureClass(
          'RolePolicy',
          policySchema,
          freezed: false,
          read: cls.read,
          write: cls.write,
        );
        out.add(
          FieldDef(
            name: 'policies',
            wireName: 'policies',
            type: 'Map<String, ${policy.name}>',
            required: isRequired,
          ),
        );
        continue;
      }
      String? override = cls.fieldTypeOverrides[key];
      if (override != null) {
        out.add(
          FieldDef(
            name: _fieldName(key),
            wireName: key,
            type: override,
            required: isRequired,
            jsonKey: _fieldName(key) == key ? null : key,
          ),
        );
        continue;
      }
      String? arrayItemOverride;
      if (cls.name == 'MetaLite' && key == 'ads') {
        arrayItemOverride = 'MetaAd';
      } else if (cls.name == 'MetaDetailedOnly' && key == 'features') {
        suggested = 'MetaFeatures';
      } else if (cls.name == 'UserLite' && key == 'avatarDecorations') {
        arrayItemOverride = 'UserAvatarDecoration';
      } else if (cls.name == 'UserLite' && key == 'instance') {
        suggested = 'UserInstance';
      } else if (cls.name == 'UserLite' && key == 'badgeRoles') {
        arrayItemOverride = 'UserBadgeRole';
      } else if (cls.name == 'UserDetailedNotMeOnly' && key == 'fields') {
        arrayItemOverride = 'UserField';
      } else if (cls.name == 'MeDetailedOnly' && key == 'securityKeysList') {
        arrayItemOverride = 'SecurityKey';
      }
      var type = _typeFor(
        schema,
        suggested,
        read: cls.read || cls.forceRead,
        write: cls.write || cls.forceWrite,
        arrayItemOverride: arrayItemOverride,
      );
      final defaultValue = _defaultValue(schema, type, isRequired);
      if (!isRequired && defaultValue == null && !type.endsWith('?')) {
        type = '$type?';
      }
      if (isRequired && defaultValue != null) {
        // Required fields never get defaults.
      }
      final fieldName = _fieldName(key);
      out.add(
        FieldDef(
          name: fieldName,
          wireName: key,
          type: type,
          required: isRequired,
          defaultValue: defaultValue,
          jsonKey: fieldName == key ? null : key,
        ),
      );
    }
    return out;
  }

  void _flattenObject(
    Map<String, dynamic> schema,
    Map<String, Map<String, dynamic>> properties,
    Set<String> required,
  ) {
    final allOf = schema['allOf'];
    if (allOf is List) {
      for (final part in allOf) {
        if (part is Map<String, dynamic>) {
          _flattenObject(part, properties, required);
        }
      }
      return;
    }
    final ref = schema[r'$ref'];
    if (ref is String) {
      final name = ref.split('/').last;
      final target = schemas[name];
      if (target is Map<String, dynamic>) {
        _flattenObject(target, properties, required);
      }
      return;
    }
    final props = schema['properties'];
    if (props is Map<String, dynamic>) {
      for (final entry in props.entries) {
        properties[entry.key] = (entry.value as Map).cast<String, dynamic>();
      }
    }
    final req = schema['required'];
    if (req is List) {
      required.addAll(req.map((value) => value.toString()));
    }
  }

  String _typeFor(
    Map<String, dynamic> schema,
    String suggested, {
    required bool read,
    required bool write,
    String? arrayItemOverride,
  }) {
    final ref = schema[r'$ref'];
    if (ref is String) {
      return ref.split('/').last;
    }
    final types = schema['type'];
    var nullable = false;
    if (types is List) {
      final nonNull = types.where((value) => value != 'null').toList();
      nullable = nonNull.length != types.length;
      if (nonNull.length == 1) {
        final inner = Map<String, dynamic>.from(schema)
          ..['type'] = nonNull.first;
        final type = _typeFor(
          inner,
          suggested,
          read: read,
          write: write,
          arrayItemOverride: arrayItemOverride,
        );
        return nullable && !type.endsWith('?') ? '$type?' : type;
      }
      return 'JsonMap?';
    }
    if (schema['enum'] is List) {
      final values = _enumValuesOf(schema);
      final existing = enums[suggested] ?? knownEnums[suggested];
      if (existing != null) {
        return nullable ? '$suggested?' : suggested;
      }
      final name = uniqueName(suggested);
      enums[name] = EnumDef(name, values);
      return nullable ? '$name?' : name;
    }
    if (schema['oneOf'] is List) {
      final branches = schema['oneOf'] as List;
      final nonNull = branches
          .where((branch) => branch is! Map || branch['type'] != 'null')
          .toList();
      if (nonNull.length == 1) {
        final type = _typeFor(
          (nonNull.first as Map).cast<String, dynamic>(),
          suggested,
          read: read,
          write: write,
          arrayItemOverride: arrayItemOverride,
        );
        return type.endsWith('?') ? type : '$type?';
      }
      final primitive = nonNull.every((branch) {
        final type = branch is Map ? branch['type'] : null;
        return type == 'integer' || type == 'number' || type == 'boolean';
      });
      return primitive ? 'Object?' : 'JsonMap?';
    }
    if (schema['anyOf'] is List) {
      final branches = (schema['anyOf'] as List)
          .whereType<Map>()
          .map((branch) => branch.cast<String, dynamic>())
          .toList();
      if (branches.length == 1) {
        return _typeFor(
          branches.first,
          suggested,
          read: read,
          write: write,
          arrayItemOverride: arrayItemOverride,
        );
      }
      return 'Object?';
    }
    if (types == 'array') {
      if (schema['prefixItems'] is List) {
        return 'List<Object>${nullable ? '?' : ''}';
      }
      final item = (schema['items'] as Map?)?.cast<String, dynamic>() ?? {};
      final itemType = _typeFor(
        item,
        arrayItemOverride ?? '${suggested}Item',
        read: read,
        write: write,
      );
      final list = 'List<$itemType>';
      return nullable ? '$list?' : list;
    }
    if (types == 'object' ||
        schema['properties'] is Map ||
        schema['allOf'] is List) {
      final additional = schema['additionalProperties'];
      if (additional is Map) {
        final valueType = additional == true
            ? 'dynamic'
            : _typeFor(
                (additional as Map).cast<String, dynamic>(),
                '${suggested}Value',
                read: read,
                write: write,
              );
        final map = 'Map<String, $valueType>';
        return nullable ? '$map?' : map;
      }
      if (schema['properties'] is Map || schema['allOf'] is List) {
        final cls = ensureClass(
          suggested,
          schema,
          freezed: false,
          read: read,
          write: write,
        );
        return nullable ? '${cls.name}?' : cls.name;
      }
      return nullable ? 'JsonMap?' : 'JsonMap';
    }
    String base;
    if (types == 'string') {
      base = schema['format'] == 'date-time' ? 'DateTime' : 'String';
    } else if (types == 'number') {
      base = 'num';
    } else if (types == 'integer') {
      base = 'int';
    } else if (types == 'boolean') {
      base = 'bool';
    } else {
      base = 'JsonMap';
    }
    return nullable ? '$base?' : base;
  }

  String? _defaultValue(
    Map<String, dynamic> schema,
    String type,
    bool required,
  ) {
    if (required) {
      return null;
    }
    if (!schema.containsKey('default')) {
      return null;
    }
    final value = schema['default'];
    if (value == null) {
      return null;
    }
    if (schema['enum'] is List) {
      final enumName = type.replaceAll('?', '');
      final enumDef = enums[enumName] ?? knownEnums[enumName];
      if (enumDef == null) {
        return null;
      }
      final entries = _enumEntries(enumDef);
      final match = entries
          .where((entry) => entry.key == value.toString())
          .toList();
      if (match.isEmpty) return null;
      return '$enumName.${match.first.value}';
    }
    if (value is bool) {
      return value ? 'true' : 'false';
    }
    if (value is num) {
      return value.toString();
    }
    if (value is String) {
      return "'${value.replaceAll(r'\', r'\\').replaceAll("'", r"\'")}'";
    }
    // Lists and maps use the server default; omit to avoid const-type issues.
    return null;
  }

  String renderClass(ClassDef cls) {
    final b = StringBuffer();
    if (cls.freezed) {
      b.writeln('@freezed');
      final impl = cls.implements == null
          ? ''
          : ' implements ${cls.implements}';
      b.writeln('abstract class ${cls.name} with _\$${cls.name}$impl {');
      b.writeln('  const factory ${cls.name}({');
      for (final field in cls.fields) {
        b.write('    ');
        if (field.jsonKey != null) {
          b.write("@JsonKey(name: '${field.jsonKey}') ");
        }
        if (field.defaultValue != null) {
          b.write('@Default(${field.defaultValue}) ');
        }
        if (field.required) {
          b.write('required ');
        }
        b.writeln('${field.type} ${field.name},');
      }
      b.writeln('  }) = _${cls.name};');
      b.writeln();
      b.writeln(
        '  factory ${cls.name}.fromJson(Map<String, dynamic> json) => '
        '_\$${cls.name}FromJson(json);',
      );
      b.writeln('}');
      return b.toString();
    }

    final extendsPart = cls.extendsName == null
        ? ''
        : ' extends ${cls.extendsName}';
    final implementsPart = cls.implements == null
        ? ''
        : ' implements ${cls.implements}';
    b.writeln('@JsonSerializable(explicitToJson: true, includeIfNull: false)');
    b.writeln('class ${cls.name}$extendsPart$implementsPart {');
    b.writeln('  const ${cls.name}({');
    for (final field in cls.fields) {
      b.write('    ');
      final includeNull = field.required && field.type.endsWith('?');
      if (field.jsonKey != null || includeNull) {
        final name = field.jsonKey ?? field.wireName;
        b.write("@JsonKey(name: '$name'");
        if (includeNull) {
          b.write(', includeIfNull: true');
        }
        b.write(') ');
      }
      if (field.required) {
        b.write('required ');
      }
      if (field.defaultValue != null) {
        b.writeln('this.${field.name} = ${field.defaultValue},');
      } else {
        b.writeln('this.${field.name},');
      }
    }
    b.writeln('  })${cls.extendsName == null ? '' : ' : super()'};');
    for (final field in cls.fields) {
      b.writeln('  final ${field.type} ${field.name};');
    }
    b.writeln();
    b.writeln(
      '  factory ${cls.name}.fromJson(Map<String, dynamic> json) => '
      '_\$${cls.name}FromJson(json);',
    );
    b.writeln();
    if (cls.extendsName != null) {
      b.writeln('  @override');
    }
    b.writeln('  Map<String, dynamic> toJson() => _\$${cls.name}ToJson(this);');
    b.writeln('}');
    return b.toString();
  }

  String _fieldName(String wire) {
    return switch (wire) {
      'default' => 'defaultValue',
      'on' => 'onValue',
      'var' => 'varValue',
      _ => _safeIdentifier(wire),
    };
  }
}

String _pascal(String value) {
  final parts = value
      .split(RegExp(r'[^A-Za-z0-9]+'))
      .where((part) => part.isNotEmpty);
  return parts.map((part) => part[0].toUpperCase() + part.substring(1)).join();
}
