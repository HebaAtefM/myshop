import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_pge_event.dart';
part 'home_pge_state.dart';

class HomePgeBloc extends Bloc<HomePageViewEvent, HomePgeState> {
  HomePgeBloc() : super(HomePgeState()) {
    on<PageViewEvent>(_PageViewEmit);




  }
  void _PageViewEmit( PageViewEvent event,Emitter<HomePgeState> emit ){
    emit(state.copywith(index:event.index));


  }



}
