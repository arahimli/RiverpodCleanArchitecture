import 'package:dio/dio.dart';

class RestApiUrls{
  RestApiUrls._();

  static const String baseUrl = '';
  static const String jokeApiServerKey = '';
  static const String randomJoke = 'https://api.chucknorris.io/jokes/random';



  static BaseOptions baseOptions = BaseOptions(
    baseUrl: baseUrl,
    receiveDataWhenStatusError: true,
    headers: {
      'content-type' : 'application/json',
    },
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
  );

  static Options options = Options(
    headers: {
      'content-type' : 'application/json',
    },
    receiveTimeout: const Duration(seconds: 60),
  );

}