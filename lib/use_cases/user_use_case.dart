import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:share_data/models/result_error_model.dart';
import 'package:share_data/models/result_model.dart';
import 'package:share_data/models/user_model.dart';
import 'package:share_data/repositories/supabase/user_repository.dart';

final userUseCaseProvider = Provider<UserUseCase>(
  (ref) => UserUseCase(ref),
);

class UserUseCase {
  UserUseCase(this._ref);

  final Ref _ref;

  UserRepository get _userRepository => _ref.read(userRepositoryProvider);

  Future<ResultModel<UserModel>> fetchUserModel({
    required String userId,
  }) async {
    final result = await _userRepository.fetchUserModel(userId: userId);
    final data = result.data;
    final error = result.errorModel;

    if (data != null) {
      return ResultModel.from(data: data);
    }

    return ResultModel.from(
      errorModel: ResultErrorModel(
        errorMessage: error?.errorMessage,
      ),
    );
  }

  Future<ResultModel<void>> updateUserName({
    required String userId,
    required String userName,
  }) {
    return _userRepository.updateUserName(
      userId: userId,
      userName: userName,
    );
  }

  Future<ResultModel<void>> updateIsLogout({
    required String userId,
    required bool isLogout,
  }) {
    return _userRepository.updateIsLogout(
      userId: userId,
      isLogout: isLogout,
    );
  }
}
