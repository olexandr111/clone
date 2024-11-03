import 'package:flutter/material.dart';
import 'package:fsc/pages/home_page.dart';
import 'package:fsc/pages/login_page.dart';
import 'package:fsc/pages/main_page.dart';
import 'package:fsc/styles/app_colors.dart';
import 'package:fsc/variables.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Urbanist',
          scaffoldBackgroundColor: AppColors.background,
          brightness: Brightness.light),
      //home: Login(),
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/home': (context) => HomePage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}
