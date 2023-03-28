part of 'page.dart';

class HomeView extends ConsumerWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {

    JokeEntity? jokeEntity = ref.watch(jokeProvider).jokeEntity;
    Failure? failure = ref.watch(jokeProvider).failure;
    bool isLoading = ref.watch(jokeProvider).isLoading;



    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Random Joke", style: TextStyle(fontSize: 18),),
      ),
      body: Builder(
        builder: (context) {
          if(isLoading){
            return const _LoadingJoke();
          }
          if(jokeEntity != null){
            return _LoadedJoke(
              joke: jokeEntity,
              ref: ref,
            );
          }else if(failure != null){
            return _FailureJoke(
              failure: failure,
              ref: ref,
            );
          }else{
            return const _LoadingJoke();
          }
        },
      ),
    );
  }
}
