import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as sb;

import 'package:share_data/const/error_const.dart';
import 'package:share_data/const/message_const.dart';
import 'package:share_data/const/url_const.dart';
import 'package:share_data/models/result_error_model.dart';
import 'package:share_data/models/result_model.dart';
import 'package:share_data/providers/supabase_client_provider.dart';

final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepository(ref),
);

class AuthRepository {
  AuthRepository(this._ref);

  final Ref _ref;

  sb.Session? fetchCurrentSession() {
    return _ref.read(supabaseClientProvider).auth.currentSession;
  }

  sb.User? fetchCurrentUser() {
    return _ref.read(supabaseClientProvider).auth.currentUser;
  }

  Future<ResultModel<void>> signUpByEmail({
    required String email,
    required String password,
  }) async {
    try {
      await _ref.read(supabaseClientProvider).auth.signUp(
            email: email,
            password: password,
            emailRedirectTo: UrlConst.redirectUrl,
          );

      return ResultModel.from(data: null);
    } on sb.AuthException catch (authException) {
      String message = authException.message;
      if (authException.message == ErrorConst.invalidPassword) {
        message = MessageConst.requiredPasswordOverSix;
      } else if (authException.message == ErrorConst.emailLimitExceeded) {
        message = MessageConst.emailRateLimit;
      }

      return ResultModel.from(
        errorModel: ResultErrorModel(
          errorMessage: message,
          errorCode: authException.statusCode,
        ),
      );
    } catch (e) {
      return ResultModel.from(
        errorModel: ResultErrorModel(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<ResultModel<void>> loginByEmail({
    required String email,
    required String password,
  }) async {
    try {
      await _ref.read(supabaseClientProvider).auth.signInWithPassword(
            email: email,
            password: password,
          );

      return ResultModel.from(data: null);
    } on sb.AuthException catch (authException) {
      String message = authException.message;

      if (message == ErrorConst.invalidLogin) {
        message = MessageConst.failedLogin;
      } else if (message == ErrorConst.emailNotConfirmed) {
        message = MessageConst.maybeExistConfirmMail;
      }

      return ResultModel.from(
        errorModel: ResultErrorModel(
          errorMessage: message,
          errorCode: authException.statusCode,
        ),
      );
    } catch (e) {
      return ResultModel.from(
        errorModel: ResultErrorModel(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<ResultModel<void>> logout() async {
    try {
      await _ref.read(supabaseClientProvider).auth.signOut();

      return ResultModel.from(data: null);
    } catch (e) {
      return ResultModel.from(
        errorModel: ResultErrorModel(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  // セッションのリフレッシュ
  Future<ResultModel<bool>> refreshSession() async {
    try {
      await _ref.read(supabaseClientProvider).auth.refreshSession();

      return ResultModel.from(data: true);
    } catch (e) {
      return ResultModel.from(
        errorModel: ResultErrorModel(
          errorMessage: e.toString(),
        ),
      );
    }
  }

  Future<ResultModel<void>> resentConfirmationEmail({
    required String emailAddress,
  }) async {
    try {
      await _ref.read(supabaseClientProvider).auth.resend(
            email: emailAddress,
            type: sb.OtpType.signup,
            emailRedirectTo: UrlConst.redirectUrl,
          );
      return ResultModel.from(data: null);
    } on sb.AuthException catch (authException) {
      return ResultModel.from(
        errorModel: ResultErrorModel(
          errorMessage: authException.message,
          errorCode: authException.statusCode,
        ),
      );
    } catch (e) {
      return ResultModel.from(
        errorModel: ResultErrorModel(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
