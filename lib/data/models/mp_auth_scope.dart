import 'package:freezed_annotation/freezed_annotation.dart';
part 'mp_auth_scope.freezed.dart';
part 'mp_auth_scope.g.dart';

@freezed
class MpAuthScope with _$MpAuthScope {
  const factory MpAuthScope({
    required int id,
    required String title,
  }) = _MpAuthScope;

  factory MpAuthScope.fromJson(Map<String, dynamic> json) =>
      _$MpAuthScopeFromJson(json);
}
