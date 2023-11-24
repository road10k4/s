import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/Info_page/info_page.dart';
import 'package:flutter_application_3/screens/history_page/history_page.dart';
import 'package:flutter_application_3/screens/home_page/home_page.dart';
import 'package:flutter_application_3/screens/intro/intro.dart';
import 'package:flutter_application_3/screens/login_opt/login_opt.dart';
import 'package:flutter_application_3/screens/main_page/main_page.dart';

import 'screens/tasks/tasks_page.dart';

class App extends StatelessWidget{
  const App({Key? key}) : super(key : key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Driver',
      initialRoute: Intro.routeName,
      routes: {
        // Splash.routeName: (context) => const Splash(),
         Tasks.routeName: (context) => const Tasks(),
         History.routeName: (context) => const History(),
         Info.routeName: (context) => const Info(),
         Main.routeName: (context) => const Main(),
         Intro.routeName: (context) => const Intro(),
         LoginOptions.routeName: (context) => const LoginOptions(),
         Home.routeName: (context) => const Home(),


      },
    );
  }
}