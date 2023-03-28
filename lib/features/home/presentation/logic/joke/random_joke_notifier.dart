part of 'notifier.dart';



class JokeNotifier extends StateNotifier<JokeState>{
  JokeNotifier({required this.jokeUseCases}) : super(const JokeState(jokeEntity: JokeEntity())){
    getJoke();
  }
  final JokeUseCases jokeUseCases;

  getJoke() async{
    state = state.copyWith(isLoading: true);

    final result = await jokeUseCases.getRandomJoke();
    result.fold(
            (failure){
              state = state.copyWith(failure: failure, isLoading: false);
            },
            (success) {
              state = state.copyWith(jokeEntity: success, isLoading: false);
            }
    );

  }

}

final jokeProvider = StateNotifierProvider<JokeNotifier, JokeState>((ref) => sl<JokeNotifier>());
