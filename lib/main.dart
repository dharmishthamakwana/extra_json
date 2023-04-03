import 'package:extra_json/screen/home/provider/home_provider.dart';
import 'package:extra_json/screen/home/view/home_screen.dart';
import 'package:extra_json/screen/home/view/second_screen.dart';
import 'package:extra_json/screen/home/view/splesh_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => SplashScreen(),
          'home': (context) =>HomeScreen(),
          'second':(context) => SecondSCreen(),
        },
      ),
    ),
  );
}
