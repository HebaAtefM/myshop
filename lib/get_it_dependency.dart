import 'package:dio/dio.dart';
import 'package:rozy_restraunt/features/view_models/books_repository.dart';
import 'package:rozy_restraunt/features/view_models/books_webservices.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view_models/bottom_nav_bar/home_page_bloc.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/home_screens/view_models/home_cubit/books_cubit.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/login/view_model/sign_in_bloc/login_bloc.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/register_screens/view_model/sign_up_bloc/rigester_bloc.dart';
import 'package:get_it/get_it.dart';


final getIt = GetIt.instance;

void setupGetIT() {
  getIt.registerSingleton<RestClient>(RestClient(Dio()));

  getIt.registerSingleton<HomeRepo>(HomeRepo(getIt.get<RestClient>()));
  getIt.registerSingleton<BooksCubit>(BooksCubit(getIt.get<HomeRepo>()));
  getIt.registerSingleton<LoginBloc>(LoginBloc());
  getIt.registerSingleton<RigesterBloc>(RigesterBloc());
  getIt.registerSingleton<HomePageBloc>(HomePageBloc());


}