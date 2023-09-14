import 'package:flutter/material.dart';
import 'package:mybookly/core/shared/themes/themes.dart';
import 'package:mybookly/features/detailsscreen/presentation/view/detailsview.dart';
import 'package:mybookly/features/homeview/presentation/homeview.dart';
import 'package:mybookly/features/searchscreen/searchview.dart';
import 'package:mybookly/features/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     routes: {
      splashscreen.routeName:(c)=>splashscreen(),
       homeview.routeName:(c)=>homeview(),
       detailsScreen.routeName:(c)=>detailsScreen(),
       searchview.routeName:(c)=>searchview(),
     },
      initialRoute:splashscreen.routeName ,
      debugShowCheckedModeBanner: false,
      theme: themes.darktheme,
      themeMode: ThemeMode.dark,
          );
  }
}
