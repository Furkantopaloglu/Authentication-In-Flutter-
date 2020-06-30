import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget{
  final Color backGroundColor;
  final Color textColor;
  final String text;
  final VoidCallback onPressed;

  const LoginButton({Key key, this.backGroundColor, this.textColor, this.text, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return buildRaisedButton(context);
  }
  
  RaisedButton buildRaisedButton(BuildContext context){
    return RaisedButton(
      child: buildCenterText(context),
      onPressed: onPressed,
      color: backGroundColor,
      textColor: textColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
    );
  }
  Text buildCenterText(BuildContext context)=>Text(
  "$text",
  style: TextStyle(
    color: Colors.white,
    fontSize:  MediaQuery.of(context).size.height*0.035,
  ),
);
}

