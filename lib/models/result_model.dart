import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:share_data/models/result_error_model.dart';

part 'result_model.freezed.dart';

@freezed
class ResultModel<T> with _$ResultModel<T> {
  const factory ResultModel({
    required T? data,
    required ResultErrorModel? errorModel,
  }) = _ResultModel;

  factory ResultModel.from({
    @Default(null) T? data,
    @Default(null) ResultErrorModel? errorModel,
  }) {
    return ResultModel<T>(
      data: data,
      errorModel: errorModel,
    );
  }
}
