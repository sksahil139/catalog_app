import 'package:flutter/material.dart'
    show BuildContext, MaterialApp, StatelessWidget, ThemeMode, Widget, runApp;
import 'package:velocity_x/velocity_x.dart';

import 'package:learningdart/pages/cart_page.dart';
import 'package:learningdart/pages/homepage.dart';
import 'package:learningdart/pages/loginpage.dart';
import 'package:learningdart/core/store.dart';
import 'package:learningdart/utils/routes.dart';
import 'package:learningdart/utils/themes.dart';

void main() {
  runApp(VxState(store: MyStore(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        MyRoutes.homeRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.cartRoute: (context) => const CartPage(),
      },
    );
  }
}
