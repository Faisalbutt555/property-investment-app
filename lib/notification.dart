import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:property_investor/utils/approuteclass.dart';
import 'package:property_investor/utils/color.dart';
import 'package:property_investor/utils/dialog.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  List<int> liked = new List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 100,
        color:whitecolor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height-170,
              child: ListView.builder(
                  itemCount: 9,
                  itemBuilder: (BuildContext context, index) =>index==3? Padding(
                      padding: EdgeInsets.only(left: 15,top: 20,bottom: 20),
                      child: Text('Older Notifications',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)): _newNotification(index)),
            ),


          ],
        ),
      ),
    );
  }
Widget _showSharePopUP(){
    return CustomDialog(height: MediaQuery.of(context).size.height*.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 30,),
          Text('Share with',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 20,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/facebook.png'),
                  ),
                  Text('Facebook')
                ],
              ),
              SizedBox(width: MediaQuery.of(context).size.height*.02,),

              Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/gmail.png'),
                  ),
                  Text('Gmail')
                ],
              ),
              SizedBox(width: MediaQuery.of(context).size.height*.02,),

              Column(
                children: <Widget>[
                  CircleAvatar(

                    child: Image.asset('assets/images/twitter.png',fit: BoxFit.contain,),
                  ),
                  Text('Twitter')
                ],
              ),
              SizedBox(width: MediaQuery.of(context).size.height*.02,),

              Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle

                    ),
                    child: CircleAvatar(child: Image.asset('assets/images/instagram.png',fit: BoxFit.contain,)),
                  ),
                  Text('Instagram')
                ],
              ),

            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.05,),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.05),
            child: GestureDetector(
              onTap: (){
                AppRoutes.pop(context);
              },
              child: Container(

                decoration: BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(10)),
                  color: redgradient2,
                ),
                width: 200,
                height: 40,
                child: Center(
                    child:  Text("CLOSE",style: TextStyle(color: whitecolor),)
                ),

              ),

            ),
          ),
        ],
      ),
      outerchild: Container(
        padding: const EdgeInsets.all(2.0), // borde width
        decoration: new BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.5),// border color
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Icon(Icons.share,color: red,),
        ),
      ) ,
    );

}
  Widget _newNotification(int index) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        decoration: BoxDecoration(
            color:index==1 || index==2 || index==5? Color(0xffF9F7F7):whitecolor,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black54.withOpacity(0.3),
              )
            ]),
        height: MediaQuery.of(context).size.height / 7.6,
        padding: EdgeInsets.only(left: 05, right: 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            
            index==1?Padding(
              padding: EdgeInsets.only(top: 15),
              child: Image.asset(
                'assets/images/notification1.png',scale: 4.5
                ,
              ),
            ):Container(
              margin: EdgeInsets.only(top: 18),
              width: 40.0,
              height: 40.0,
              padding: const EdgeInsets.all(2.0), // borde width
              decoration: new BoxDecoration(
                color: Colors.transparent,
                border: Border.all(width: 0.5),// border color
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: index==2?Image.asset(
                    'assets/images/notification3.png'
                    , scale: 3.5,
                  ):Image.asset(
                    'assets/images/notification2.png'
                    , scale: 3.5,
                  )),
            ),
            SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.55),
                    child: Text('06-11-2020',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)),

                Text('New Notification',style: TextStyle(fontWeight: FontWeight.bold),),
                GestureDetector(
                  onTap: (){

                    showDialog(context: context,child: _showNotification(index));

                  },
                  child: Container(
                      width: MediaQuery.of(context).size.width * .6,
                      child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna.',
                        style: TextStyle(fontSize: 12),
                      )),
                ),

              Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.62),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                    onTap: (){
                      showDialog(context: context,child: _showSharePopUP());

                    },
                      child: Icon(Icons.share,size: 20,
                      color: Colors.black54,),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          if(liked.contains(index)){
                            liked.remove(index);
                          }
                          else{
                            liked.add(index);
                          }
                        });
                      },
                      child: liked.contains(index)?Image.asset('assets/images/liked.png',scale: 4,):Image.asset('assets/images/unlike.png',scale: 4,),
                    ),
                  ],
                ),
              )
              ],
            ),
            /*  Padding(
                padding: EdgeInsets.only(left:10,top: 15,bottom:15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[


                    Text('hisdsds',
                      style: TextStyle(
                          color:Color(0xff414141),
                          fontWeight: FontWeight.bold,
                          fontSize:14
                      ),),

                    SizedBox(height:3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('images/location.png',
                          scale: 4,),
                        SizedBox(width:2),
                        Text('sdsdsd}Km away',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color:Color(0xff414141)
                          ),),

                      ],
                    ),

                  ],
                )
            )*/
          ],
        ));
  }
 Widget _showNotification(int index){
  return CustomDialog(height: MediaQuery.of(context).size.height*.5,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 4,),
        Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.67),
            child: Text('10-01-2020',style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 15),)),
        SizedBox(height: 20,),
        Text("New Notification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
       Container(
         margin: EdgeInsets.only(bottom: 5),
         width: MediaQuery.of(context).size.width*.90,
         child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',style: TextStyle(fontSize: 14),),
       ),
        Container(
          margin: EdgeInsets.only(bottom: 5),
          width: MediaQuery.of(context).size.width*.90,
          child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',style: TextStyle(fontSize: 14),),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 20),
          width: MediaQuery.of(context).size.width*.90,
          child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',style: TextStyle(fontSize: 14),),
        ),

        Padding(
          padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.18),
          child: GestureDetector(
            onTap: (){
              AppRoutes.pop(context);
            },
            child: Container(

              decoration: BoxDecoration(
                borderRadius:BorderRadius.all(Radius.circular(10)),
                color: redgradient2,
              ),
              width: 200,
              height: 40,
              child: Center(
                  child:  Text("CLOSE",style: TextStyle(color: whitecolor),)
              ),

            ),

          ),
        ),
      ],
    ),
    outerchild: index==1?CircleAvatar(
      backgroundColor: Colors.transparent,
      child: Image.asset('assets/images/notification1.png',scale: 1,),
    ):Container(

      decoration: new BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 0.1),// border color
        shape: BoxShape.circle,
      ),
      child:CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image.asset(index==1?'assets/images/notification1.png':index==0?'assets/images/notification2.png':index==3?'assets/images/notification1.png':'assets/images/notification2.png',scale: 2.5,),
      ),
    ) ,
  );

}
}
