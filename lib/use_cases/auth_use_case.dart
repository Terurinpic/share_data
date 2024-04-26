import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:share_data/models/auth_model.dart';
import 'package:share_data/models/result_model.dart';
import 'package:share_data/repositories/supabase/auth_repository.dart';

final authUseCaseProvider = Provider<AuthUseCase>(
  (ref) => AuthUseCase(ref),
);

class AuthUseCase {
  AuthUseCase(this._ref);

  final Ref _ref;

  AuthRepository get _authRepository => _ref.read(authRepositoryProvider);

  AuthModel fetchCurrentAuth() {
    return AuthModel(
      currentSession: _authRepository.fetchCurrentSession(),
      currentUser: _authRepository.fetchCurrentUser(),
    );
  }

  Future<ResultModel<void>> signUpByEmail({
    required String email,
    required String password,
  }) async {
    return _authRepository.signUpByEmail(
      email: email,
      password: password,
    );
  }

  Future<ResultModel<void>> loginByEmail({
    required String email,
    required String password,
  }) {
    return _authRepository.loginByEmail(
      email: email,
      password: password,
    );
  }

  Future<ResultModel<void>> logout() {
    return _authRepository.logout();
  }

  Future<ResultModel<bool>> refreshSession() {
    return _authRepository.refreshSession();
  }

  Future<ResultModel<void>> resentConfirmationEmail({
    required String emailAddress,
  }) async {
    return _authRepository.resentConfirmationEmail(
      emailAddress: emailAddress,
    );
  }
}
