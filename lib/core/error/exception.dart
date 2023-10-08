import 'package:rozy_restraunt/core/network/error_messege.dart';

class ServerException implements Exception{


  final ErrorModel errorModel;

  ServerException({required this.errorModel});



}