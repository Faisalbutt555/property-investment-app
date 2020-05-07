import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:property_investor/utils/color.dart';
class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  _callNumber() async{
    const number = '0000 000 000'; //set the number here
    bool res = await FlutterPhoneDirectCaller.callNumber(number);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                     color: whitecolor,
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
                  child: Padding(padding: EdgeInsets.only(top: 30),
                    child:Row(
                      children: <Widget>[
    Image.asset('assets/images/notification1.png',scale: 5,),
    SizedBox(width: 10,),
                        Text(
    "John Doe 1",
    style:
    TextStyle(fontSize: 18, color: Colors.black),
    ),

                        GestureDetector(
                          onTap: (){
                            _callNumber();
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.43),
                              child: Image.asset('assets/images/dial.png',scale: 3,)),
                        )


    ],
                    )

                  ),
                ),

                Container(
                  margin: EdgeInsets.only(top: 10),
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * .69,
                  child: ListView.builder(itemBuilder: (context, index) {
                    return index==0? Container(
                      margin: EdgeInsets.only(top: 5),
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                          child: Text(
                            "Today 9:21",
                          )),
                    ):

                      _chatbubble(index);
                  }),
                ),
                _buildBottomBar(context),
              ],
            )));
  }

  Widget _chatbubble(int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*.1),
            child:index.isOdd
                ?   Container(
              margin: EdgeInsets.only(top: 0),
              width: 40.0,
              height: 60.0,

              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.asset(
                      'assets/images/notification1.png',
                      scale: 3.5,
                    ),

                  ),
                  Text("John")
                ],
              ),
            ) : Container()
        ),




        Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width-100,
                margin: EdgeInsets.only(bottom: 10, left: index.isOdd?  5:MediaQuery.of(context).size.width*.22, right: 15, top: 5),
                decoration: BoxDecoration(
                    color: index.isEven ? Color(0xffC4C4C4): Color(0xffEEEEEE) ,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16),
                        bottomLeft:
                        index.isEven ? Radius.circular(16) : Radius.circular(0),
                        bottomRight:
                        index.isEven ? Radius.circular(0) : Radius.circular(16))),
                padding: EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 3),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          padding:
                          EdgeInsets.only(top: 0, left: 5, right: 5, bottom: 0),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do "
                                "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis au",
                            textAlign: TextAlign.start,
                          )),
                    ])),
            index>1 && index.isEven?Padding(
                padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.65),
                child: Text('Delivered')):Container() ],
        ),


      ],
    );
  }

  Container _buildBottomBar(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 70,
      margin: const EdgeInsets.only(
        top: 5.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 10.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            textInputAction: TextInputAction.send,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              isDense: true,
              hintText: "Type a message.",
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              border: InputBorder.none,
          suffix: Image.asset('assets/images/sent.png',scale: 5,)
            ),
          ),
       
        ],
      ),
    );
  }
 /* _chatActions() {
    return PopupMenuButton(
      icon: Icon(
        Icons.more_vert,
        size: 30,
      ),
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: 1,
            child: Text("Mark unread"),
          ),
          PopupMenuItem(
            value: 2,
            child: Text("Star"),
          ),
          PopupMenuItem(
            value: 3,
            child: Text("Archive"),
          ),
          PopupMenuItem(
            value: 4,
            child: Text("Block"),
          ),
          PopupMenuItem(
            value: 5,
            child: Text("Delete"),
          ),
        ];
      },
      onSelected: (val) {
        setState(() {});
      },
    );
  }*/
}
