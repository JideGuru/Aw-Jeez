part of 'home_state_notifier.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.started() = HomeStateStarted;

  const factory HomeState.loadInProgress() = HomeStateLoadInProgress;

  const factory HomeState.success({
    required List<Character> characters,
  }) = HomeStateSuccess;

  const factory HomeState.error({bool? isConnectionError}) = HomeStateError;
}
