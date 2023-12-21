import 'package:auto_route/auto_route.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:christmas/bloc_observer.dart';
import 'package:christmas/firebase_options.dart';
import 'package:christmas/router/app_router.gr.dart';
import 'package:christmas/router/route_observer.dart';
import 'package:christmas/user_prefs.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get_it/get_it.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

void main() async {
  usePathUrlStrategy();

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  _locator();
  await Future.wait([
    Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    ),
    UserPrefs.instance.initialize(),
  ]);

  Bloc.observer = XBlocObserver();
  runApp(const MyApp());
}

void _locator() {
  GetIt.I..registerLazySingleton(() => XRouter());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = GetIt.I<XRouter>();
    final botToastBuilder = BotToastInit();
    //TODO
    //  UserPrefs().clear();
    return MaterialApp.router(
      routeInformationParser:
          appRouter.defaultRouteParser(includePrefixMatches: true),
      routerDelegate: AutoRouterDelegate(
        appRouter,
        navigatorObservers: () => [XRouteObserver()],
      ),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        child = botToastBuilder(context, child);
        return child;
      },
      title: 'Gift for Anita',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
