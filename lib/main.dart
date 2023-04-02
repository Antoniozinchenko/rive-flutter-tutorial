import 'package:flutter/material.dart';
import 'package:myapp/home_page.dart';

void main() {
  runApp(const MyApp());
}

const primarySwatch = MaterialColor(0xFFFFDEEF, {
  50: Color(0xFFFFDEEF),
  100: Color(0xFFFFDEEF),
  200: Color(0xFFFFDEEF),
  300: Color(0xFFFFDEEF),
  400: Color(0xFFFFDEEF),
  500: Color(0xFFFFDEEF),
  600: Color(0xFFFFDEEF),
  700: Color(0xFFFFDEEF),
  800: Color(0xFFFFDEEF),
  900: Color(0xFFFFDEEF),
});

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: primarySwatch,
      ),
      home: const HomePage(),
    );
  }
}

