import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as sb;

part 'auth_model.freezed.dart';

@freezed
class AuthModel with _$AuthModel {
  const factory AuthModel({
    @Default(null) sb.Session? currentSession,
    @Default(null) sb.User? currentUser,
  }) = _AuthModel;
}
