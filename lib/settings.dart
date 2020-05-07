import 'package:flutter/material.dart';
import 'package:property_investor/editProfile.dart';
import 'package:property_investor/login.dart';
import 'package:property_investor/utils/approuteclass.dart';
import 'package:property_investor/utils/color.dart';
import 'package:property_investor/utils/dialog.dart';
class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    color: red.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 0.1,
                    offset:Offset(
                      0.0, // horizontal, move right 10
                      2.0, // vertical, move down 10
                    ),
                  )
                ]
            ),
            child: Padding(padding: EdgeInsets.only(top: 0),
              child: AppBar(
                  centerTitle: true,
                  title: Center(
                    child: Padding(padding: EdgeInsets.only(right:MediaQuery.of(context).size.width*.12,top: MediaQuery.of(context).size.height*.03),
                      child: Text('Settings',style:
                      TextStyle(fontSize: 18, color: Colors.black),
                      ),),
                  ),
                  leading: GestureDetector(
                      onTap: (){
                        AppRoutes.pop(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Icon(Icons.arrow_back_ios,color: Colors.black54,))),

                  backgroundColor: Colors.white,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)))),),
          )),
    body: Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            elevation: 10,
            margin: EdgeInsets.only(left:20,right: 20,top: 10),
            child: InkWell(
              onTap: (){
                AppRoutes.replace(context, EditProfile());
              },
              child: Container(
                padding: EdgeInsets.only(left:16,right:16),
                height: MediaQuery.of(context).size.height/9.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Row(
                      children: <Widget>[
                        Image.asset('assets/images/user.png',
                         color: red, scale: 3,),
                        SizedBox(width: 29,),
                        Text('   EDIT PROFILE',
                          style: TextStyle(
                              color: greycolor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right,
                      color:greycolor,

                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            elevation: 10,
            margin: EdgeInsets.only(left:20,right: 20,top: 10),
            child: InkWell(
              onTap: (){
                showDialog(context: context,child: _logOutPopUp());

              },
              child: Container(
                padding: EdgeInsets.only(left:16,right:16),
                height: MediaQuery.of(context).size.height/9.4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Row(
                      children: <Widget>[
                        Image.asset('assets/images/logout.png',
                          color: red, scale: 3,),
                        SizedBox(width: 29,),
                        Text('Log Out',
                          style: TextStyle(
                              color: greycolor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Icon(Icons.keyboard_arrow_right,
                      color:greycolor,

                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    );
  }
  Widget _logOutPopUp(){
    return CustomDialog(height: MediaQuery.of(context).size.height*.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 50,),
          Padding(
              padding: EdgeInsets.only(left: 0),
              child: Text('Are you sure?',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
          SizedBox(height: MediaQuery.of(context).size.height*.08,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          const SizedBox(height: 30),

          Padding(
            padding: EdgeInsets.only(right: 60),

            child: RaisedButton(
              onPressed: () {
                AppRoutes.pop(context);
              },
              child: const Text(
                  'NO',
                  style: TextStyle(fontSize: 20,)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right:35.0),
            child: RaisedButton(
              color: redgradient2,

              onPressed: () {
                AppRoutes.makeFirst(context, Login());

              },
              child: const Text(
                  'YES',
                  style: TextStyle(fontSize: 20,color: Colors.white)
              ),
            ),
          ),
        ],
      ),
        ],
      ),

    );

  }
}
