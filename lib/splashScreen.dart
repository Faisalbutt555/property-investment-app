import 'dart:async';

import 'package:flutter/material.dart';
import 'package:property_investor/login.dart';
import 'package:property_investor/utils/approuteclass.dart';
import 'package:property_investor/utils/color.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool selected = false, loadImage = false,showImage=false,navigator=false;

  void initState() {
    super.initState();

    startTime();
  }
  navigationTime() async {
    var duration = new Duration(milliseconds: 1000);
    return Timer(duration, _setNavigationValue);

  }
void _setNavigationValue(){
    setState(() {
      navigator=true;
NavigatorTime();
    });

}
  NavigatorTime() async {
    var duration = new Duration(milliseconds: 200);
    return Timer(duration, _navigateToLogin);

  }

  void _navigateToLogin(){
    AppRoutes.replace(context, Login());
  }
  startTime() async {
    var duration = new Duration(milliseconds: 500);
    return Timer(duration, _setBox);
  }
  breakTime() async {
    var duration = new Duration(milliseconds: 500);
    return Timer(duration, _showImage);

  }
void _showImage(){
    setState(() {
      showImage=true;
    });
    startTimeLoadImage();

}
  startTimeLoadImage() async {
    var duration = new Duration(milliseconds: 300);
    return Timer(duration, _setImage);
  }
  void _setImage(){
    setState(() {
      loadImage=true;

    });
navigationTime();
  }

  void _setBox() {
    setState(() {

      selected=true;

       });
    breakTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [redgradient1, redgradient2])),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(alignment: AlignmentDirectional.center, children: <Widget>[
          AnimatedContainer(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
            ),
            width: navigator==true?MediaQuery.of(context).size.width : 0.0,
            height:navigator==true?MediaQuery.of(context).size.height: 0.0,
            duration: Duration(milliseconds: 200),

            /*

                child: Image.asset('assets/images/splashimage.png',width:190,height:190,)),
*/ /*

         ),
          )*/
          ),


          AnimatedContainer(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,
            ),
            width: selected ? 200.0:navigator==true?MediaQuery.of(context).size.width : 0.0,
            height: selected ? 200.0 :navigator==true?MediaQuery.of(context).size.height: 0.0,
            duration: Duration(milliseconds: 500),

            /*

                child: Image.asset('assets/images/splashimage.png',width:190,height:190,)),
*/ /*

         ),
          )*/
          ),
          showImage==false?Container():AnimatedContainer(
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.transparent,
                image:

                DecorationImage(

                    image: AssetImage(
                      'assets/images/splashimage.png',
                    ),
                    fit: BoxFit.contain)),
            width: loadImage == true ? 190.0 : 250,
            height: loadImage == true ? 190.0 : 250,
          ),
        ]),
      ),
    );
  }
}
