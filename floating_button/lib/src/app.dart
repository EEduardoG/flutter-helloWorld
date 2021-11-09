import 'package:flutter/material.dart';

import 'package:floating_button/src/screens/home.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //This property desactivate debug banner in our app.
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}
