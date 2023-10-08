


import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rozy_restraunt/features/view_models/book_model.dart';
import 'package:rozy_restraunt/features/view_models/books_repository.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view_models/home_cubit/books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit(this.homeRepo) : super(BooksInitial());

  final   HomeRepo homeRepo;

  Future<void> featchdBooks() async
  {
    emit(BooksLoading());
     var  response= homeRepo.fetchBooks().then((value) {
      emit(BooksSuccess(value));
    });
  }
}