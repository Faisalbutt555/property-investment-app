import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:property_investor/utils/color.dart';
class ContactUS extends StatefulWidget {
  @override
  _ContactUSState createState() => _ContactUSState();
}

class _ContactUSState extends State<ContactUS> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics:new NeverScrollableScrollPhysics(),
        child: Container(
          color: Colors.white,
         width:   MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        child: Column(
          children: <Widget>[

            Container(
            margin: EdgeInsets.only(top: 15),
              padding: EdgeInsets.only(left: 20,top: 10),
              width: MediaQuery.of(context).size.width-50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 1.5,
                    spreadRadius: 1.5,
                    color: Colors.black54.withOpacity(0.2)
                  )

                ],
                borderRadius: BorderRadius.all(Radius.circular(10)),

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                Text("Contact us",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                ),
                  SizedBox(height: 8,),
                  Container(
                    width: MediaQuery.of(context).size.width*.7,
                    child: Text("Lorem ipsum dolor sit amet, consectetur ut labore et dolore magna "
                    ,style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),
                    ),

                  ),
                 SizedBox(height: 10,),

                ],
              ),
            ),
            Padding(

              padding: EdgeInsets.only(top: 10),
              child:  Container(
                padding: EdgeInsets.only(left: 20,top: 10),
                width: MediaQuery.of(context).size.width-50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1.5,
                        spreadRadius: 1.5,
                        color: Colors.black54.withOpacity(0.2)
                    )

                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),

                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Text("Phone Number",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8,),
                    Container(
                      width: MediaQuery.of(context).size.width*.4,
                      child: Text("+61 0002120551515",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),
                      ),

                    ),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ),
            Padding(

              padding: EdgeInsets.only(top: 10),
              child:  Container(
                padding: EdgeInsets.only(left: 20,top: 10),
                width: MediaQuery.of(context).size.width-50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1.5,
                        spreadRadius: 1.5,
                        color: Colors.black54.withOpacity(0.2)
                    )

                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),

                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Text("Email",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8,),
                    Container(
                      width: MediaQuery.of(context).size.width*.7,
                      child: Text("propertyinvestors@gmail.com",style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),
                      ),

                    ),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ),
            Padding(

              padding: EdgeInsets.only(top: 10),
              child:  Container(
                padding: EdgeInsets.only(left: 20,top: 10),
                width: MediaQuery.of(context).size.width-50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1.5,
                        spreadRadius: 1.5,
                        color: Colors.black54.withOpacity(0.2)
                    )

                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),

                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Text("Address",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8,),
                    Container(
                      width: MediaQuery.of(context).size.width*.7,
                      child: Text('Lorem ipsum dolor sit amet',style: TextStyle(fontSize: 14,fontWeight: FontWeight.normal),
                      ),

                    ),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width-50,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 1.5,
                      spreadRadius: 1.5,
                      color: Colors.black54.withOpacity(0.2)
                  )

                ],
                borderRadius: BorderRadius.all(Radius.circular(10)),

              ),

              height: 150,
              child: GoogleMap(
                mapType: MapType.normal,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                },
              ),
            ),
            Padding(

              padding: EdgeInsets.only(top: 10),
              child:  Container(
                padding: EdgeInsets.only(left: 20,top: 10),
                width: MediaQuery.of(context).size.width-50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 1.5,
                        spreadRadius: 1.5,
                        color: Colors.black54.withOpacity(0.2)
                    )

                  ],
                  borderRadius: BorderRadius.all(Radius.circular(10)),

                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Text("Social Links",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8,),
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      width: MediaQuery.of(context).size.width*.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('assets/images/facebook.png',scale: 4.5,),
                          Image.asset('assets/images/twitter1.png',scale: 3.7,),
                          Image.asset('assets/images/gmail.png',scale: 4.5,),
                          Image.asset('assets/images/instagram2.png',scale: 3.7,),

                        ],
                      ),

                    ),
                    SizedBox(height: 10,),

                  ],
                ),
              ),
            ),

          ],

        ),
        ),
      ),

    );
  }
}
