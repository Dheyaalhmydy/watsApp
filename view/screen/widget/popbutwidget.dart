import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class popbutwidget extends StatelessWidget {
  Widget? firsttext;
  Widget? sectext;
  Widget? thtext;
  Widget? fourtext;
   popbutwidget({Key? key,this.firsttext,this.sectext,this.thtext,this.fourtext}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: (context) =>  [
              PopupMenuItem(
                child: firsttext,
                value:  firsttext,
              ),
              PopupMenuItem(
                child:sectext,
                value:sectext ,
              ),
              PopupMenuItem(
                child: thtext,
                value: thtext,
              ),
              PopupMenuItem(
                child: fourtext,
                value: fourtext,
              ),
            ]);
  }
}
