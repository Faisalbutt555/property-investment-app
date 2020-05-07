import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:property_investor/chat.dart';
import 'package:property_investor/contactUs.dart';
import 'package:property_investor/myProfile.dart';
import 'package:property_investor/notification.dart';
import 'package:property_investor/utils/color.dart';
class Home extends StatefulWidget {
  Home({
    this.pageNo
  });
  int pageNo;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController _pageController=PageController();
  int page=0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  void initState() {
    super.initState();
    widget.pageNo==null?page=0:page=widget.pageNo;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:page==3||page==1?null:PreferredSize(
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
                    child: Padding(padding: EdgeInsets.only(right: page==1?MediaQuery.of(context).size.width*.40:MediaQuery.of(context).size.width*.12,top: MediaQuery.of(context).size.height*.03),
                      child: Text(
                        page==0?"NOTIFICATIONS":page==1?"JohnDoe":page==2?"CONTACT US":"My Profile",
                        style:
                        TextStyle(fontSize: 18, color: Colors.black),
                      ),),
                  ),
                  leading: page==1?Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Image.asset('assets/images/notification1.png',scale: 5,))


                  :Container(),
                  actions: <Widget>[
                    page==1?Padding(
                  padding: EdgeInsets.only(top: 22),
                      child: GestureDetector(
                        child: Image.asset('assets/images/dial.png',scale: 1,),
                      ),
                    ):Container(),
                  ],
                  backgroundColor: Colors.white,
                  shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          bottomRight: Radius.circular(50)))),),
          )),
      bottomNavigationBar:_bottom(),
    body:PageView(
      physics:NeverScrollableScrollPhysics(),

        controller: _pageController,
        children: <Widget>[

          Notifications(),
          Chat(),
          ContactUS(),
          MyProfile(),
        ],
        onPageChanged: (int index) {
          setState(() {
            page=index;
            _pageController.jumpToPage(index);
          });
        }
    ),
    );
  }
  Widget _bottom() {
    return Stack(
        children: <Widget>[
          CurvedNavigationBar(

    index: page,
        height: MediaQuery.of(context).size.height*.075,
        backgroundColor: Colors.white,

       buttonBackgroundColor: red,
        color: blackcolor.withOpacity(0.07),
        animationCurve: Curves.bounceIn,
        animationDuration: Duration(milliseconds: 200),
      items: <Widget>[

          Container(
          margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          child:Image.asset('assets/images/notification.png',color: page==0?whitecolor:red,scale: 4,),
          ),Container(
          margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          child: Image.asset('assets/images/chat.png',color:page==1?whitecolor:null,scale: 4,)),
    Container(
    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
    child:Image.asset('assets/images/contactUs.png',color: page==2?whitecolor:null,scale: 4,),
    ),
    Container(
    margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
    child:Image.asset('assets/images/myProfile.png',color: page==3?whitecolor:null,scale: 4,),
    )
      ],

      onTap: (index) {
      setState(() {
        page = index;
        print(page);
        _pageController.jumpToPage(page);
      });
    },
    ),
    Container(
    margin: EdgeInsets.only(top: 37),
    child: Row(
    children: <Widget>[
    Expanded(
    child: _text(page == 0 || page == null ? "" : "Notifications")),
    Expanded(
    child: _text(
    page == 1 ?"" : "Chat")),
    Expanded(
    child: _text(page == 2? ""
      : "Contact Us")),
    Expanded(child: _text(page == 3 ? "" : "My Profile")),
    ],
    ),
    )
    ],
    );
  }

  Widget _text(String text) {
    return Text(
      "$text",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 12),
       );
  }

}
