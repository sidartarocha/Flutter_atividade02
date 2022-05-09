import 'package:challenge_ui_plant_app/constants.dart';
import 'package:challenge_ui_plant_app/screens/home/bloc/home_bloc.dart';
import 'package:challenge_ui_plant_app/screens/home/home_screen.dart';
import 'package:challenge_ui_plant_app/screens/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';

void main() {
  runApp(const PlantApp());
}

class PlantApp extends StatelessWidget {
  const PlantApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    LocalJsonLocalization.delegate.directories = ['lib/i18n'];

    return MaterialApp(
        supportedLocales: [
          Locale('en', 'US'),
          Locale('pt', 'BR'),],
        debugShowCheckedModeBanner: false,
        title: 'Plant App',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kBackgroundColor,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        ),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          LocalJsonLocalization.delegate
        ],

        home: Splash()//const HomeScreen(),

      );
  }
}
