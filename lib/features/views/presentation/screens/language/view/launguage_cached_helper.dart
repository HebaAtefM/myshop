import 'package:shared_preferences/shared_preferences.dart';

class LanguageCachedHelper{
  Future<void> cachedLanguageCode(String languagecode) async{

    final shared=await SharedPreferences.getInstance();
    shared.setString("Local", languagecode);



  }

  Future<String> getCachedLanguageCode() async{
    final shared=await SharedPreferences.getInstance();
final cachedLanguageCode=shared.getString("Local");
if(cachedLanguageCode !=null) {
  return cachedLanguageCode;
}else{
  return "en";
}
}



  }