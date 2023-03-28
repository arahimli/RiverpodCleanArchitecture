
import 'package:dartz/dartz.dart';
import 'package:riverpod_clean_architecture/core/failures/failures.dart';

import '../../../../core/exceptions/exceptions.dart';
import '../../domain/entities/joke_entity.dart';

import '../../domain/repositories/random_joke_repository.dart';
import '../datasources/joke_datasource.dart';


class RandomJokeRepositoryImpl implements RandomJokeRepository{
  final JokeDatasource jokeDatasource;

  const RandomJokeRepositoryImpl({required this.jokeDatasource});

  @override
  Future<Either<Failure, JokeEntity>> getRandomJoke() async{
    try{
      final result = await jokeDatasource.getRandomJokeApi();
      return right(result);
    } on ServerException catch(_){
      return left(ServerFailure());
    } on InternetException catch(_){
      return left(SocketFailure());
    } on AuthenticationException catch(_){
      return left(AuthenticationFailure());
    }catch(e){
      return left(UnexpectedFailure());
    }
  }
}

