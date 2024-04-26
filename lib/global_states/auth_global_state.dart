import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:share_data/models/auth_model.dart';
import 'package:share_data/models/user_model.dart';
import 'package:share_data/use_cases/auth_use_case.dart';

part 'auth_global_state.freezed.dart';

final authGlobalStateProvider =
    StateNotifierProvider<AuthGlobalStateNotifier, AuthGlobalState>(
  (ref) => AuthGlobalStateNotifier(ref, const AuthGlobalState()),
);

@freezed
class AuthGlobalState with _$AuthGlobalState {
  const factory AuthGlobalState({
    @Default(AuthModel()) AuthModel authModel,
    @Default(null) UserModel? userModel,
  }) = _AuthGlobalState;
}

class AuthGlobalStateNotifier extends StateNotifier<AuthGlobalState> {
  AuthGlobalStateNotifier(this._ref, super.state);

  final Ref _ref;

  // use case
  AuthUseCase get _authUseCase => _ref.read(authUseCaseProvider);

  void fetchCurrentAuth() {
    final currentAuthModel = _authUseCase.fetchCurrentAuth();

    state = state.copyWith(authModel: currentAuthModel);
  }

  void setUserModel(UserModel? userModel) {
    state = state.copyWith(userModel: userModel);
  }

  String? getCurrentUserId() {
    return state.authModel.currentUser?.id;
  }

  String? getCurrentUserEmail() {
    return state.authModel.currentUser?.email;
  }

  void updateUserName(String updatedUserName) {
    final userModel = state.userModel;
    if (userModel == null) {
      return;
    }

    final updatedUserModel = userModel.copyWith(name: updatedUserName);

    state = state.copyWith(userModel: updatedUserModel);
  }
}
