import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nayapay_clone/screens/splash_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nayapay Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Color(0xffca7800),
            statusBarIconBrightness: Brightness.dark,
          ),
        ),
      ),
      home: const SplashScreen(),
    );
  }
}
