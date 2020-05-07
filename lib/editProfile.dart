import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:property_investor/home.dart';
import 'package:property_investor/myProfile.dart';
import 'package:property_investor/settings.dart';
import 'package:property_investor/utils/approuteclass.dart';
import 'package:property_investor/utils/color.dart';
import 'package:property_investor/utils/dialog.dart';
import 'package:property_investor/utils/dropdownfields.dart';
class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

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
                    offset: Offset(
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
                    child: Padding(padding: EdgeInsets.only(right: MediaQuery
                        .of(context)
                        .size
                        .width * .12, top: MediaQuery
                        .of(context)
                        .size
                        .height * .03),
                      child: Text('My PROFILE', style:
                      TextStyle(fontSize: 18, color: Colors.black),
                      ),),
                  ),
                  leading: GestureDetector(
                      onTap: () {
                        AppRoutes.pop(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: Icon(
                            Icons.arrow_back_ios, color: Colors.black54,))),

                  backgroundColor: Colors.white,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)))),),
          )),
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        child: ListView(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 20, top: 30, right: 20),

                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text('User Detail',
                            style: TextStyle(
                              color: blackcolor.withOpacity(0.9),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,

                            ),)
                        ],
                      ),
                      SizedBox(height: 15,),
                      centerpart(),
                      SizedBox(height: 10,),

                      Padding(
                          padding: EdgeInsets.only(
                              left: 4, top: 0, right: MediaQuery
                              .of(context)
                              .size
                              .width * .6),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,

                            children: <Widget>[
                              Container(
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height / 6.8,
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width / 2.9,
                                  child: Center(
                                    child: _image == null ? Image.asset(
                                      'assets/images/dotbackimage.png',
                                      scale: 2.6,

                                    ) : Image.file(_image),)),

                              GestureDetector(
                                onTap: () {
                                  getImage();
                                },
                                child: Container(
                                  width: MediaQuery.of(context).size.width*.25,
                                  height: MediaQuery
                                      .of(context)
                                      .size
                                      .height * .03,
                                  decoration: BoxDecoration(
                                      color: redgradient2
                                  ),
                                  child: Center(
                                    child: Text('Uplad Image',
                                      style: TextStyle(
                                        color: whitecolor,
                                        fontSize: 10,
                                        //fontWeight: FontWeight.w400
                                      ),),
                                  ),
                                ),
                              ),

                            ],
                          )
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                      ),
                      GestureDetector(
                        onTap: () {
                          Timer.periodic(new Duration(seconds: 2), (timer) {
                            AppRoutes.pop(context);
                          });
                          showDialog(context: context,child: _profileUpdatePopUp());
                        },
                        child: Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width * .6,
                          height: MediaQuery
                              .of(context)
                              .size
                              .height * .05,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(5)),
                              color: redgradient2
                          ),
                          child: Center(
                            child: Text('Update',
                              style: TextStyle(
                                color: whitecolor,
                                fontSize: 15,
                                //fontWeight: FontWeight.w400
                              ),),
                          ),
                        ),
                      )

                    ])

            )
          ],
        ),
      ),
    );
  }
  Widget centerpart() {
    return Column(
      children: <Widget>[

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Username',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,

              ),),
          ],
        ),
        SizedBox(height: 5,),
        TextFormField(
          style: TextStyle(
            color: blackcolor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),

          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20),
            border: OutlineInputBorder(borderSide: BorderSide(
                color: greycolor,
                width: 5
            )),
            hintText: 'joe',
            hintStyle: TextStyle(
              color: greycolor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),

          ),

        ),

        SizedBox(
          height: 7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Phone Number',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,

              ),),
          ],
        ),
        SizedBox(height: 5,),
        TextFormField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            WhitelistingTextInputFormatter.digitsOnly
          ],
          style: TextStyle(
            color: blackcolor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),

          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20),
            border: OutlineInputBorder(borderSide: BorderSide(
                color: hintcolor,
                width: 5
            )),
            hintText: '+9200 00251 0210',
            hintStyle: TextStyle(
              color: Color(0xff667980),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),

          ),

        ),

        SizedBox(
          height: 7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Email',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,

              ),),
          ],
        ),
        SizedBox(height: 5,),
        TextFormField(
          style: TextStyle(
            color: blackcolor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),

          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20),
            border: OutlineInputBorder(borderSide: BorderSide(
                color: hintcolor,
                width: 5
            )),
            hintText: 'joe@email.com',
            hintStyle: TextStyle(
              color: Color(0xff667980),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),

          ),

        ),

        SizedBox(
          height: 7,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Street',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,

              ),),
          ],
        ),
        SizedBox(height: 5,),

        TextFormField(
          maxLines: 4,
          style: TextStyle(
            color: blackcolor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20),
            border: OutlineInputBorder(borderSide: BorderSide(
                color: hintcolor,
                width: 5
            )),
            hintText: '',
            hintStyle: TextStyle(
              color: Color(0xff667980),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),

          ),

        ),
        SizedBox(height: 7),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('City',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,

              ),),
          ],
        ),
        SizedBox(height: 5,),


        TextFormField(
          style: TextStyle(
            color: blackcolor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),

          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20),
            border: OutlineInputBorder(borderSide: BorderSide(
                color: hintcolor,
                width: 5
            )),
            hintText: 'Lorem ipsum',
            hintStyle: TextStyle(
              color: Color(0xff667980),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),

          ),

        ),
        SizedBox(
          height: 7,
        ),
        new Row(
          children: <Widget>[
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('State',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey,

                  ),),
                SizedBox(height: 5,),

                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * .5,
                  child: TextFormField(
                    style: TextStyle(
                      color: blackcolor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      border: OutlineInputBorder(borderSide: BorderSide(
                          color: hintcolor,
                          width: 5
                      )),
                      hintText: 'Lorem ipsum',
                      hintStyle: TextStyle(
                        color: Color(0xff667980),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),

                    ),

                  )
                  ,
                )
              ],
            ),
            SizedBox(width: 10,),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Postal Code',
                  style: TextStyle(
                    fontSize: 12,
                    color: blackcolor,

                  ),),
                SizedBox(height: 5,),

                Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * .3,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      WhitelistingTextInputFormatter.digitsOnly
                    ],
                    style: TextStyle(
                      color: blackcolor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),

                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20),
                      border: OutlineInputBorder(borderSide: BorderSide(
                          color: hintcolor,
                          width: 5
                      )),
                      hintText: '0000',
                      hintStyle: TextStyle(
                        color: hintcolor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),

                    ),

                  )
                  ,
                )
              ],
            )


          ],
        ),
        SizedBox(height: 7),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Country',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,

              ),),
          ],
        ),
        SizedBox(height: 5,),

        TextFormField(
          style: TextStyle(
            color: blackcolor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),

          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 20),
            border: OutlineInputBorder(borderSide: BorderSide(
                color: hintcolor,
                width: 5
            )),
            hintText: 'Lorem ipsum',
            hintStyle: TextStyle(
              color: Color(0xff667980),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),

          ),

        ),

      ],
    );
  }
  Widget _profileUpdatePopUp(){
    return CustomDialog(height: MediaQuery.of(context).size.height*.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 50,),
            Image.asset('assets/images/success.png',scale: 3,),
          SizedBox(height: 20,),
        Text('Profile updated successfully',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
        ],
      ),

    );

  }
}












