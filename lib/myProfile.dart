import 'package:flutter/material.dart';
import 'package:property_investor/addproperty.dart';
import 'package:property_investor/settings.dart';
import 'package:property_investor/utils/approuteclass.dart';
import 'package:property_investor/utils/color.dart';
class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          toppart(),
          Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left:MediaQuery.of(context).size.width*.38,top: 50),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('MY PROFILE',
                      style: TextStyle(
                          color:blackcolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.18),
                    child: GestureDetector(
                      onTap: (){
                        AppRoutes.push(context, Settings());

                      },
                      child: Image.asset('assets/images/settings.png',scale: 3.5,),
                    ),
                  )
                  ],
                ),
              ),
              SizedBox(height:20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                    height:MediaQuery.of(context).size.height/10,
                    width: MediaQuery.of(context).size.width/5.2,
                    decoration: BoxDecoration(

                        color: Colors.transparent,
                        border: Border.all(width: 0.5),// border color
                        image: DecorationImage(image:AssetImage('assets/images/senderinnerdrawer.png',)),

                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: CircleAvatar(
                      backgroundImage:AssetImage('assets/images/senderinnerdrawer.png') ,
                        ),
                  )
                ],
              ),
              SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('johndoe',
                    style: TextStyle(
                        color: blackcolor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(height:04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('johndoe@gmail.com',
                    style: TextStyle(
                        color: blackcolor,
                        fontSize: 16,
                        fontWeight: FontWeight.normal
                    ),
                  )
                ],
              ),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.location_on,
                    color: blackcolor,size: 18,),
                  SizedBox(width: 4,),
                  Text('NewYork, USA',
                    style: TextStyle(
                        color: blackcolor,
                        fontSize: 16,
                        fontWeight: FontWeight.normal
                    ),

                  ),
                  SizedBox(width: 14,),
                  Icon(Icons.call,
                    color: blackcolor,size: 18,),
                  SizedBox(width: 4,),
                  Text('+1 00000-0000-000',
                    style: TextStyle(
                        color: blackcolor,
                        fontSize: 13,
                        fontWeight: FontWeight.normal
                    ),

                  ),
                ],
              ),

              SizedBox(height: 35,),

              Container(

                padding: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
                width: MediaQuery.of(context).size.width-40,
                height: MediaQuery.of(context).size.height-370,
                decoration: BoxDecoration(
                    color: whitecolor,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 2,
                          spreadRadius: 2,
                          color: blackcolor.withOpacity(0.20)
                      )
                    ],

                    borderRadius: BorderRadius.all( Radius.circular(16),),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Property Details",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                      //Button
                        ,GestureDetector(
                          onTap: (){
                            AppRoutes.push(context, AddProperty());


                          },
                          child: Container(
                            height:35 ,
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              color: Color(0xffE80c0D),

                            ),
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(bottom: 10),
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      color: whitecolor,
                                      borderRadius: BorderRadius.all(Radius.circular(2))
                                    ),
                                    child: Icon(Icons.add,color:red,size: 15,),
                                  ),
                                  SizedBox(width: 5,),
                                  Text("Add Property",style: TextStyle(color: whitecolor),)
                                   ],
                              ) ,
                          ),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      height: MediaQuery.of(context).size.height*.30,
                      child: ListView.builder(
                          itemCount: 4+1,
                          itemBuilder: (BuildContext context, index) => _newNotification(index)),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: MediaQuery.of(context).size.height*.1,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, index) =>   Container(

                          width: MediaQuery.of(context).size.width*.25,
                          height: MediaQuery.of(context).size.height*.2,
                          margin: EdgeInsets.only(top: 5),
                          padding: const EdgeInsets.all(2.0),
                          decoration: new BoxDecoration(
                            color: Colors.transparent,

                          ),
                          child: Image.asset(
                            index==0?'assets/images/home1.png':'assets/images/home2.png',
                            fit: BoxFit.fill,
                          ),
                        ), ),
                    ),

                  ],
                ),

              )
            ],
          )

        ],
      )

    );
  }
  Widget _newNotification(int index) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black54.withOpacity(0.3),
              )
            ]),
        height: MediaQuery.of(context).size.height / 10.6,

        padding: EdgeInsets.only(left: 05, right: 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Container(

              width: MediaQuery.of(context).size.width*.25,
              height: MediaQuery.of(context).size.height*.2,
              margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(2.0),
              decoration: new BoxDecoration(
                color: Colors.transparent,

              ),
              child: Image.asset(
                index==0?'assets/images/home1.png':'assets/images/home2.png',
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    
                    Image.asset('assets/images/house.png',scale: 4,),
                   SizedBox(width: 5,),
                    Text('House'),
                                      ],
                ),
                SizedBox(height: 5,),

                new Row(
                  children: <Widget>[

                    Image.asset('assets/images/location.png',scale: 4,),
                    SizedBox(width: 5,),
                    Text('New York, USA'),
                  ],
                ),
                SizedBox(height: 5,),

                new Row(
                  children: <Widget>[

                    Image.asset('assets/images/cost.png',scale: 4,),
                    SizedBox(width: 5,),
                    Text('10,230,000'),
                  ],
                ),

              ],
            ),
            SizedBox(width: 10,),

          ],
        ));
  }

  Widget toppart(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height/2.1,
      decoration: BoxDecoration(
        color: whitecolor,
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              spreadRadius: 2,
              color: blackcolor.withOpacity(0.20)
            )
          ],
          
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16)
          )
      ),

    );
  }
}
