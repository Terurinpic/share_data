import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:share_data/const/enum_const.dart';

part 'top_screen_global_state.freezed.dart';

final topScreenGlobalStateProvider =
    StateNotifierProvider<TopScreenGlobalStateNotifier, TopScreenGlobalState>(
  (ref) => TopScreenGlobalStateNotifier(const TopScreenGlobalState()),
);

@freezed
class TopScreenGlobalState with _$TopScreenGlobalState {
  const factory TopScreenGlobalState({
    @Default(TopScreenType.authentication) TopScreenType topScreenType,
    @Default(EdgeInsets.all(0)) EdgeInsets safeAreaPadding,
    @Default(Size(0, 0)) Size screenSize,
  }) = _TopScreenGlobalState;
}

class TopScreenGlobalStateNotifier extends StateNotifier<TopScreenGlobalState> {
  TopScreenGlobalStateNotifier(super.state);

  void setTopScreenType(TopScreenType topScreenType) {
    state = state.copyWith(topScreenType: topScreenType);
  }

  void setSafeAreaPadding(EdgeInsets safeAreaPadding) {
    state = state.copyWith(safeAreaPadding: safeAreaPadding);
  }

  void setScreenSize(Size screenSize) {
    state = state.copyWith(screenSize: screenSize);
  }
}
