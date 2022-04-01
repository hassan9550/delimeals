import 'dart:async';

import 'package:flutter/material.dart';
import './categories_screen.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => CategoriesScreen()));
    });
    // Future.delayed(const Duration(milliseconds: 2000), () {
    //
    //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => CategoriesScreen()));
    //
    //
    // });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Text('Splash Screen')
        // Image.network('https://images.pexels.com/photos/11341064/pexels-photo-11341064.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        // height: 80,
        //   width: 80,
        // ),
      ),
    );
  }
}
