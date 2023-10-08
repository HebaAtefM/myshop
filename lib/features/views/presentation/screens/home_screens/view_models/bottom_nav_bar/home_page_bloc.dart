
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, BottomNavBarState> {


  HomePageBloc() : super(BottomNavBarState()) {
    on<BottomNavEvent>(_bottomNavBar);
  }

  void _bottomNavBar( BottomNavEvent event,Emitter<BottomNavBarState> emit ){
    emit(state.copywith(index:event.index));


  }
}
