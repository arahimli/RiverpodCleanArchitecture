
part of '../../../pages/home/page.dart';

class _LoadedJoke extends StatelessWidget {
  final JokeEntity joke;
  final WidgetRef ref;

  const _LoadedJoke({
    Key? key,
    required this.joke,
    required this.ref,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(joke.value ?? '', style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold), maxLines: 8,),
          LoadMoreButton(
            onTap: (){
              ref.read(jokeProvider.notifier).getJoke();
            },
          ),
        ],
      ),
    );
  }
}
