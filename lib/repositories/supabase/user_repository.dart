import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as sb;

import 'package:share_data/const/error_const.dart';
import 'package:share_data/const/message_const.dart';
import 'package:share_data/models/result_error_model.dart';
import 'package:share_data/models/result_model.dart';
import 'package:share_data/models/user_model.dart';
import 'package:share_data/providers/supabase_client_provider.dart';

final userRepositoryProvider = Provider<UserRepository>(
  (ref) => UserRepository(ref),
);

class UserRepository {
  UserRepository(this._ref);

  final Ref _ref;

  final _user = 'user';
  final _id = 'id';
  final _name = 'name';
  final _isLogout = 'is_logout';
  final _updatedAt = 'updated_at';

  ///
  /// Create
  ///

  ///
  /// Read
  ///

  Future<ResultModel<UserModel>> fetchUserModel({
    required String userId,
  }) async {
    try {
      final fetchedData = await _ref
          .read(supabaseClientProvider)
          .from(_user)
          .select(_name)
          .eq(_id, userId)
          .single();

      final userModel = UserModel(
        id: userId,
        name: fetchedData[_name].toString(),
      );

      return ResultModel.from(data: userModel);
    } on sb.PostgrestException catch (postgrestException) {
      String message = postgrestException.message;
      if (message == ErrorConst.noRows) {
        message = MessageConst.alreadyDeletedAccount;
      }
      return ResultModel.from(
        errorModel: ResultErrorModel(
          errorMessage: message,
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

  ///
  /// Update
  ///

  Future<ResultModel<void>> updateUserName({
    required String userId,
    required String userName,
  }) async {
    try {
      await _ref.read(supabaseClientProvider).from(_user).update({
        _name: userName,
        _updatedAt: DateTime.now().toUtc().toIso8601String(),
      }).eq(_id, userId);

      return ResultModel.from(data: null);
    } on sb.PostgrestException catch (postgrestException) {
      String message = postgrestException.message;

      if (message == ErrorConst.noRows) {
        message = MessageConst.alreadyDeletedAccount;
      }

      return ResultModel.from(
        errorModel: ResultErrorModel(
          errorMessage: message,
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

  Future<ResultModel<void>> updateIsLogout({
    required String userId,
    required bool isLogout,
  }) async {
    try {
      await _ref.read(supabaseClientProvider).from(_user).update({
        _isLogout: isLogout,
        _updatedAt: DateTime.now().toUtc().toIso8601String(),
      }).eq(_id, userId);

      return ResultModel.from(data: null);
    } on sb.PostgrestException catch (postgrestException) {
      String message = postgrestException.message;

      if (message == ErrorConst.noRows) {
        message = MessageConst.alreadyDeletedAccount;
      }

      return ResultModel.from(
        errorModel: ResultErrorModel(
          errorMessage: message,
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
