

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:riverpod_clean_architecture/constants/rest_api_urls.dart';

import 'features/home/data/datasources/joke_datasource.dart';
import 'features/home/data/repositories/random_joke_repository.dart';
import 'features/home/domain/repositories/random_joke_repository.dart';
import 'features/home/domain/usecases/joke_usecases.dart';
import 'features/home/presentation/logic/joke/notifier.dart';

final sl = GetIt.I;  // Service location

Future<void> init() async{

  // Factory - each time a new instance of the Class

  // Presentation layer
  sl.registerFactory(
          () => JokeNotifier(jokeUseCases: sl()));

  // Domain layer
  sl.registerFactory(
          () => JokeUseCases(randomJokeRepository: sl()));

  // Data layer
  sl.registerFactory<RandomJokeRepository>(
          () => RandomJokeRepositoryImpl(jokeDatasource: sl()));


  sl.registerFactory<JokeDatasource>(
    () => JokeDatasourceImpl(
      dio: Dio(
          BaseOptions(
            baseUrl: RestApiUrls.baseUrl,
            receiveDataWhenStatusError: true,
            headers: {
              'content-type' : 'application/json',
            },
            connectTimeout: const Duration(seconds: 60),
            receiveTimeout: const Duration(seconds: 60),
        )
      ))
  );

}
