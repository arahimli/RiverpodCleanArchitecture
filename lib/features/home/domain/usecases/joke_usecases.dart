
import 'package:dartz/dartz.dart';
import 'package:riverpod_clean_architecture/core/failures/failures.dart';

import '../entities/joke_entity.dart';
import '../repositories/random_joke_repository.dart';

class JokeUseCases{
  final RandomJokeRepository randomJokeRepository;

  const JokeUseCases({required this.randomJokeRepository});

  Future<Either<Failure, JokeEntity>> getRandomJoke() async{
    await Future.delayed(const Duration(seconds: 1));
    return randomJokeRepository.getRandomJoke();
  }
}