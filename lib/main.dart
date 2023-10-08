import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rozy_restraunt/app_localization.dart';
import 'package:rozy_restraunt/core/resources/routes_manager.dart';
import 'package:rozy_restraunt/core/resources/theme_manager.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rozy_restraunt/features/views/presentation/screens/language/view_model/language_cubit/language_state.dart';
import 'package:rozy_restraunt/get_it_dependency.dart';
import 'features/views/presentation/screens/language/view_model/language_cubit/language_cubit.dart';
import 'firebase_options.dart';

late String initialRpute;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIT();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FirebaseAuth.instance.authStateChanges().listen((user) {
    if (user != null) {
      initialRpute = Routes.splashRoute;
    } else {
      initialRpute = Routes.loginRoute;
    }
    runApp(MyApp());
  });
}


class MyApp extends StatelessWidget {
  MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
            LanguageCubit()
              ..getSavedLanguage(),
          ),
        ],

        child: BlocBuilder<LanguageCubit, LanguageState>(
            builder: (context, state) {
              if (state is changeLocalState) {
                return MaterialApp(
                  locale: state.locale,
                  supportedLocales: [
                    Locale("en"),
                    Locale("ar"),


                  ],
                  localizationsDelegates: [
                    AppLocalizations.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate


                  ],
                  localeResolutionCallback: (deviceLocal,
                      supportedLocales) {
                    for (var local in supportedLocales) {
                      if (deviceLocal != null &&
                          deviceLocal.languageCode ==
                              local.languageCode) {
                        return deviceLocal;
                      }
                    }
                    return supportedLocales.first;
                  },
                  debugShowCheckedModeBanner: false,
                  title: ' Food App',
                  theme: getApplicationTheme(),

                  onGenerateRoute: RouteGenerator.getRoute,
                  initialRoute: initialRpute,
                  //home:  SplashScreen(),

                );
              } else {
                return SizedBox();
              }
            }
        )
    );
  }

}









