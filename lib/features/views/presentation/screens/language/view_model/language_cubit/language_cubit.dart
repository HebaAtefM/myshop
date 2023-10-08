import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/language/view/launguage_cached_helper.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/language/view_model/language_cubit/language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageInitial());


  Future<void> getSavedLanguage() async {
    final String cachedLanguageCode = await LanguageCachedHelper()
        .getCachedLanguageCode();
    emit(changeLocalState(Locale(cachedLanguageCode)));
  }


  Future<void> changeLanguage(String languagecode) async {
    await LanguageCachedHelper().cachedLanguageCode(languagecode);
    emit(changeLocalState(Locale(languagecode)));
  }
}