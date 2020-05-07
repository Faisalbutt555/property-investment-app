import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:property_investor/home.dart';
import 'package:property_investor/utils/approuteclass.dart';
import 'package:property_investor/utils/color.dart';
import 'package:property_investor/utils/textformfeild.dart';
import 'package:timer_count_down/timer_count_down.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final loginEmail = TextEditingController();
  int checkRecommendedBody = 0;
  String currentText = '';
  TextEditingController _firstController = new TextEditingController();
  TextEditingController _secController = new TextEditingController();
  TextEditingController _thirdController = new TextEditingController();
  TextEditingController _fourController = new TextEditingController();
  TextEditingController _fiveController = new TextEditingController();
  TextEditingController _sixController = new TextEditingController();
  TextEditingController _sevenController = new TextEditingController();
  final fnFirst = FocusNode();
  final fnSec = FocusNode();
  final fnThird = FocusNode();
  final fnFour = FocusNode();
  final fnFive = FocusNode();
  final fnSix = FocusNode();
  final fnSeven = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Container(
        width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
    borderRadius: BorderRadius.all(Radius.circular(20)),
    color: Colors.white,
    image: DecorationImage(
    image: AssetImage(
    'assets/images/loginBackground.png',
    ),
    fit: BoxFit.fill)),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: <Widget>[
    SizedBox(
    height: checkRecommendedBody == 0
    ? MediaQuery.of(context).size.height * .08
        : MediaQuery.of(context).size.height * .12),
    Padding(
    padding: EdgeInsets.only(
    left: MediaQuery.of(context).size.width * .35),
    child: checkRecommendedBody == 0
    ? Stack(
    children: <Widget>[
    Padding(
      padding:EdgeInsets.only(top: 5,left: 8) ,
      child: Image.asset(
      'assets/images/Polygon.png',
      scale: 4.5,
      ),
    ),
    Padding(
    padding: EdgeInsets.only(
    left:
    MediaQuery.of(context).size.width * .1,
    top: 20),
    child: Text(
    'Login',
    style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: blackcolor),
    ))
    ],
    )
        : Padding(
    padding: EdgeInsets.only(left: 10,top: 20),
    child: Column(
      children: <Widget>[
        Text(
        'Enter the passcode that is sent to',
        style: TextStyle(
        fontSize: 14, fontWeight: FontWeight.w600),
        textAlign: TextAlign.center,
        ),
        SizedBox(height: 7,),
        Text(
          '+1 000 000 00',
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    )),
    Padding(
    padding: EdgeInsets.only(
    left: MediaQuery.of(context).size.width * .34),
    child: checkRecommendedBody == 0
    ? Textfeildclass(
    obscuretext: false,
    feildcontroller: loginEmail,
    keyboardType: TextInputType.emailAddress,

      labletxt: 'Enter Email / Phone number',
    iconn: Icon(
    Icons.email,
    size: 19,
    color: Color(0xffC5C5C5),
    ),
    )
        : textOtpfeild(),
    ),
    GestureDetector(
    onTap: () {
    if(checkRecommendedBody>=0){
      setState(() {
        checkRecommendedBody=checkRecommendedBody+1;
      });
    }
    if(checkRecommendedBody==2)
{        AppRoutes.replace(context, Home());

    }
    },
    child: Container(
    margin: EdgeInsets.only(
    top:checkRecommendedBody==0? MediaQuery.of(context).size.height * .235:MediaQuery.of(context).size.height * .205),
    height: MediaQuery.of(context).size.height / 17,
    width: MediaQuery.of(context).size.width / 2.8,
    decoration: BoxDecoration(
    color: whitecolor,
    borderRadius: BorderRadius.circular(25),
    ),
    child: Padding(
    padding: EdgeInsets.only(left: 15, right: 6.8),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
    SizedBox(
    width: 5,
    ),
    Text(
    checkRecommendedBody == 0 ? 'Login' : 'Continue',
    style: TextStyle(
    color: redgradient2,
    fontSize: 16,
    fontWeight: FontWeight.bold),
    ),
    SizedBox(
    width: 5,
    ),
    CircleAvatar(
    radius: 13,
    backgroundColor: redgradient2,
    child: Icon(
    Icons.arrow_forward_ios,
    color: whitecolor,
    size: 13,
    ),
    )
    ],
    ),
    )),
    ),
    SizedBox(
    height: MediaQuery.of(context).size.height * .08,
    ),
    Text(
    'OR\nLogin With',
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color:
    checkRecommendedBody == 0 ? redgradient2 : whitecolor),
    ),
    Padding(
    padding: EdgeInsets.only(top: 5),
    child: checkRecommendedBody == 0
    ? Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Padding(
    padding: EdgeInsets.only(top: 0),
    child: new GestureDetector(
    onTap: () => {},
    child: Image.asset(
    'assets/images/gmail.png',
    height: 30,
    width: 30,
    fit: BoxFit.fill,
    ),
    ),
    ),
    Padding(
    padding: EdgeInsets.only(left: 10),
    child: new GestureDetector(
    onTap: () => {},
    child: Image.asset('assets/images/facebook.png',
    height: 30, width: 30, fit: BoxFit.fill),
    ),
    ),
    new GestureDetector(
    onTap: () => {},
    child: Image.asset('assets/images/twitter1.png',
    scale: 4, fit: BoxFit.fill),
    ),
    ],
    )
        : Padding(
      padding: EdgeInsets.only(top: 10),
          child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Image.asset('assets/images/refresh.png',scale: 3.5,),
    SizedBox(width: 5,),
    Text('Re-send SMS in '),
    CountDown(
    seconds: 60,
    onTimer: () {
      setState(() {

      });
    },
    ),
    Text(' sec')
    ],
    ),
        ),
    ),
    SizedBox(
    height: checkRecommendedBody == 0
    ? MediaQuery.of(context).size.height * .225
        : MediaQuery.of(context).size.height * .25,
    ),
    Image.asset(
    'assets/images/propertyinvestors.png',
    scale: 5,
    )
    ],
    ),
    ),
    ),
    );
    }

    Widget textOtpfeild() {
    return Container(
    width: MediaQuery.of(context).size.width * .5,
    child: PinCodeTextField(
    length: 6,
    obsecureText: false,
    animationType: AnimationType.fade,
    shape: PinCodeFieldShape.underline,
    activeColor: Colors.grey,
    inactiveColor: Colors.black,
    animationDuration: Duration(milliseconds: 300),
    borderRadius: BorderRadius.circular(5),
    fieldHeight: 20,
    fieldWidth: 20,
    onChanged: (value) {
    setState(() {
    currentText = value;
    });
    },
    ),
    );

    /*Container(
      margin: EdgeInsets.only(top:15.0),
      width: MediaQuery.of(context).size.width * 0.7,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
            width: 30.0,
          ),

          new Expanded(
            child: TextField(
              textInputAction:TextInputAction.next,
              textAlign: TextAlign.center,
              controller: _firstController,
              focusNode: fnFirst,
              enabled: true,
              maxLength: 1,

              style: TextStyle(fontSize: 20.0, color: Colors.black54),
              decoration: InputDecoration(
                counterText: "",
                contentPadding: EdgeInsets.all(5),
                disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black54,
                        width: 2
                      // color: isFirstColor ? Colors.white30 : Colors.white,

                    )),
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          new Expanded(
            child: new TextField(
              textInputAction:TextInputAction.next,
              textAlign: TextAlign.center,
              controller: _secController,
              enabled: true,
              maxLength: 1,
              focusNode: fnSec,
              style: TextStyle(fontSize: 20.0, color: Colors.black54),
              decoration: InputDecoration(
                counterText: "",
                contentPadding: EdgeInsets.all(5),
                disabledBorder: UnderlineInputBorder(

                    borderSide: BorderSide(
                        color: Colors.black54,
                        width: 2
                      //color: isSecColor ? Colors.white30 : Colors.white,
                    )),
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          new Expanded(
              child: new TextField(
                textInputAction:TextInputAction.next,
                textAlign: TextAlign.center,
                controller: _thirdController,
                enabled: true,
                maxLength: 1,
                focusNode: fnThird,
                style: TextStyle(fontSize: 20.0, color: Colors.black54),
                decoration: InputDecoration(
                  counterText: "",
                  contentPadding: EdgeInsets.all(5),
                  disabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.black54,
                          width: 2
                        //color: isThirdColor ? Colors.white30 : Colors.white,
                      )),
                ),
              )),
          SizedBox(
            width: 10.0,
          ),
          new Expanded(
            child: new TextField(
              textInputAction:TextInputAction.next,
              textAlign: TextAlign.center,
              controller: _fourController,
              enabled: true,
              maxLength: 1,
              focusNode: fnFive,
              style: TextStyle(fontSize: 20.0, color: Colors.black54),
              decoration: InputDecoration(
                counterText: "",
                contentPadding: EdgeInsets.all(5),
                disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black54,
                        width: 2
                      //color: isFourColor ? Colors.white30 : Colors.white,
                    )),
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          new Expanded(
            child: new TextField(
              textInputAction:TextInputAction.next,
              textAlign: TextAlign.center,
              controller: _fiveController,
              enabled: true,
              maxLength: 1,
              focusNode: fnSix,
              style: TextStyle(fontSize: 20.0, color: Colors.black54),
              decoration: InputDecoration(
                counterText: "",
                contentPadding: EdgeInsets.all(5),
                disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black54,
                        width: 2
                      //color: isFiveColor ? Colors.white30 : Colors.white,
                    )),
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          new Expanded(
            child: new TextField(
              textInputAction:TextInputAction.done,
              textAlign: TextAlign.center,
              controller: _sixController,
              enabled: true,
              maxLength: 1,
              focusNode: fnSeven,
              style: TextStyle(fontSize: 20.0, color: Colors.black54),
              decoration: InputDecoration(
                counterText: "",
                contentPadding: EdgeInsets.all(0),
                disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black54,
                        width: 2
                      //color: isSixColor ? Colors.white30 : Colors.white,
                    )),
              ),
            ),
          ),
          SizedBox(
            width: 30.0,
          ),

        ],
      ),
    );*/
    }
  }
