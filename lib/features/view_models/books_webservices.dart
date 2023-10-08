import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:rozy_restraunt/features/view_models/book_model.dart';

part 'books_webservices.g.dart';

@RestApi(baseUrl: 'https://fakestoreapi.com/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/products')
  Future<List<Model> >getTasks(

      );
}