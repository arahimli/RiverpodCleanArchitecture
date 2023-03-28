
import 'package:equatable/equatable.dart';

abstract class Failure with FailureMessage, EquatableMixin{}

class ServerFailure extends Failure{

  @override
  List<Object?> get props => [];
}

class SocketFailure extends Failure{

  @override
  List<Object?> get props => [];
}

class AuthenticationFailure extends Failure{

  @override
  List<Object?> get props => [];
}

class UnexpectedFailure extends Failure{

  @override
  List<Object?> get props => [];
}


mixin FailureMessage {
  String getMessage(){
    if(this is ServerFailure){
      return 'ServerError';
    } else if(this is SocketFailure){
      return 'There are some issues on your internet connection';
    } else if(this is AuthenticationFailure){
      return 'Authentication failure';
    } else{
      return 'Undefined issue, please try again';
    }
  }
}