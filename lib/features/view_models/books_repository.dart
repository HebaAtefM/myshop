import 'package:flutter/cupertino.dart';
import 'package:rozy_restraunt/core/error/exception.dart';
import 'package:rozy_restraunt/features/view_models/book_model.dart';
import 'package:rozy_restraunt/features/view_models/books_webservices.dart';

class HomeRepo {
  final RestClient apiWebServices;


  HomeRepo(this.apiWebServices);

  Future<List<Model>> fetchBooks() async {

    var response= await apiWebServices.getTasks();
    print(response);
return response.toList();

  }

}
