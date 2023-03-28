part of '../../../pages/home/page.dart';


class _FailureJoke extends StatelessWidget {
  final Failure failure;
  final WidgetRef ref;

  const _FailureJoke({
    Key? key,
    required this.failure,
    required this.ref,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(failure.getMessage(), style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.red),),
          RefreshMoreButton(
            onTap: (){
              ref.read(jokeProvider.notifier).getJoke();
            },
          ),
        ],
      ),
    );
  }
}
