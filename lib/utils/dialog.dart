import 'package:flutter/material.dart';
import 'package:property_investor/utils/color.dart';

class CustomDialog extends StatelessWidget {
  final dialog = true;
  final double opacity;
  final Widget child;
  final Widget outerchild;
  final double height;
  CustomDialog(
      {@required this.height, this.outerchild, this.opacity, this.child});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: dialog == false
                  ? 0
                  : MediaQuery.of(context).size.height * .964,
              width: MediaQuery.of(context).size.width,
              color: blackcolor.withOpacity(opacity == null ? 0.4 : opacity),
            ),
          ),
          AnimatedContainer(
              duration: Duration(milliseconds: 300),
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              height: dialog == false ? 0 : height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(26),
                      topRight: Radius.circular(26)),
                  color: Colors.white),
              child: child),

         Positioned
           (
              top:height==MediaQuery.of(context).size.height*.5?MediaQuery.of(context).size.height*.435: MediaQuery.of(context).size.height*.635,
             child:AnimatedContainer(
            duration: Duration(microseconds: 500),
            width: MediaQuery.of(context).size.width,
            child: outerchild,
          ))
        ],
      ),
    );
  }
}
