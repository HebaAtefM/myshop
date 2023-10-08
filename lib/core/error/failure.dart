import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String messege;

  Failure(this.messege);

  @override
  List<Object> get props => [messege];


}

class ServerFailure extends Failure{
  ServerFailure(super.messege);





}
