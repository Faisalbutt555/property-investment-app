import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:property_investor/splashScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MaterialApp(
      theme: ThemeData(
        fontFamily: 'Raleway'
      ),
        debugShowCheckedModeBanner: false,
        title: 'Property Investors',
        home: SplashScreen(),
    ));});

}


