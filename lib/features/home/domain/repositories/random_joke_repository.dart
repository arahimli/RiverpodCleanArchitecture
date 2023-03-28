
import 'package:dartz/dartz.dart';

import 'package:riverpod_clean_architecture/core/failures/failures.dart';
import '../entities/joke_entity.dart';

abstract class RandomJokeRepository{
  Future<Either<Failure, JokeEntity>> getRandomJoke();
}