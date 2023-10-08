part of 'home_page_bloc.dart';



class BottomNavBarState  {
  final int index;

  BottomNavBarState({this.index = 0});


BottomNavBarState copywith({ int? index
}){
  return BottomNavBarState(index:index?? this.index);
}}