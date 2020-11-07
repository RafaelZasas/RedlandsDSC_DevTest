import 'package:cloud_functions/cloud_functions.dart';
import 'package:dsc_ur/utils/colors.dart';
//firebase imports
import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

import 'Dashboard_UI_Pages/note_page.dart';

FirebaseAnalytics analytics;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // ensure that firebase is initialized before compiling
  // future added for async modifier
  await Firebase.initializeApp(); // NOTE* Must initialize firebase before anything else
  analytics = FirebaseAnalytics(); // initialize analytics
  FirebaseCrashlytics.instance
      .setCrashlyticsCollectionEnabled(true); // enable crash info collection
  FlutterError.onError = (FlutterErrorDetails details) {
    FirebaseCrashlytics.instance.recordFlutterError(details); // record when errors/crashes happen
  };

  FirebaseFunctions functions = FirebaseFunctions.instance; // init firebase cloud functions
  FirebaseAuth auth = FirebaseAuth.instance; // init firebase authentication

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static FirebaseAnalytics analytics = FirebaseAnalytics();
  static FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(analytics: analytics);

  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.dark,
      data: (brightness) => ThemeData(
        fontFamily: 'Quicksand',
        primaryColor: MyColors.primary,
        accentColor: MyColors.accent,
        brightness: brightness, // default is dark
      ),
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          title: 'DSC Redlands',
          theme: theme,
          home: MyNotePage(),
          navigatorObservers: [
            // track when user changes screens
            FirebaseAnalyticsObserver(analytics: analytics),
          ],
        );
      },
    );
  }
}
