
import 'package:flutter/material.dart';

@immutable
abstract class LanguageState {}

class LanguageInitial extends LanguageState {}
class changeLocalState extends LanguageState {
  final Locale locale;

  changeLocalState(this.locale);

}
