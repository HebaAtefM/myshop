import 'package:rozy_restraunt/features/view_models/book_model.dart';

abstract class BooksState{



}
class BooksInitial extends BooksState{}

class BooksLoading extends BooksState{}

class BooksSuccess extends BooksState{
  final List<Model> value;

  BooksSuccess(this.value);
}
class BooksError extends BooksState{}