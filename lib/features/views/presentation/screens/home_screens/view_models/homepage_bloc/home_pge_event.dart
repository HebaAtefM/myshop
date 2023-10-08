part of 'home_pge_bloc.dart';

@immutable
abstract class HomePageViewEvent {}
class PageViewEvent extends HomePageViewEvent{
  final int index;

  PageViewEvent(this.index);


}