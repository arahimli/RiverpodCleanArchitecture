
part of 'notifier.dart';


@freezed
class JokeState with _$JokeState{

  const factory JokeState({
    @Default(true) bool isLoading,
    JokeEntity? jokeEntity,
    Failure? failure,

  }) = _JokeState;

  const JokeState._();
}