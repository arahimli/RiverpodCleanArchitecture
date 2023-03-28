

import 'dart:io';

import 'package:dio/dio.dart';

import '../exceptions/exceptions.dart';


class ExceptionUtils{
  ExceptionUtils._();

  static Exception dioErrorHandle(DioError e, StackTrace stacktrace){

    try {
      if (e.error is SocketException) {
        return InternetException();
      } else if (e.response == null) {
        return UnexpectedException();
      } else {
        switch (e.response!.statusCode) {
          case 401:
            {
              return AuthenticationException();
            }
          case 500:
            {
              return ServerException();
            }
          default:
            {
              return UnexpectedException();
            }
        }
      }
    }catch(e){
      return UnexpectedException();
    }
  }
  static Exception dioStatusCodeErrorHandle(int? statusCode){

      switch (statusCode) {
        case 401:
          {
            return AuthenticationException();
          }
        case 500:
          {
            return ServerException();
          }
        default:
          {
            return AuthenticationException();
          }
      }
  }

}