import 'package:flutter/material.dart';
import 'package:untitled5/screens/categories_meal_screen.dart';
import 'package:untitled5/screens/meal_details_Screen.dart';
import 'package:untitled5/screens/splash_screen.dart';
import './screens/categories_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.blue,
        canvasColor: Colors.white,
        fontFamily: 'Roboto Slab',
      ),
      // home: SplashScreen(),
      // CategoriesScreen(),
      initialRoute: '/',
      routes: {
        // '/categories-meal-screen': (BuildContext ctx) => CategoriesMealScreen(),
        '/': (BuildContext ctx) => SplashScreen(),
        CategoriesMealScreen.routeName: (BuildContext ctx) =>
            CategoriesMealScreen(),
        MealDetailScreen.routeName: (BuildContext ctx) =>
    MealDetailScreen()
      },
    );
  }
}
