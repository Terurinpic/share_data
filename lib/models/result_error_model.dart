import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_error_model.freezed.dart';

@freezed
class ResultErrorModel with _$ResultErrorModel {
  const factory ResultErrorModel({
    @Default(null) String? errorMessage,
    @Default(null) String? errorCode,
    @Default(null) String? requestId,
  }) = _ResultErrorModel;
}
