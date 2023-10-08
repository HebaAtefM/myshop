part of 'home_page_bloc.dart';

@immutable
abstract class HomePageEvent {}
class BottomNavEvent extends HomePageEvent{
  final int index;

  BottomNavEvent(this.index);


}