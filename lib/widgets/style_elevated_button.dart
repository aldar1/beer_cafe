import 'package:flutter/material.dart';
import 'package:login_1/screens/sign_in.dart';

class StyleElevatedButton extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final Color textColor;
  final double height;
  final double width;
  const StyleElevatedButton({
    super.key,
    required this.title, 
    required this.backgroundColor,
    required this.height, 
    required this.width,
    required this.textColor, 
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          backgroundColor: backgroundColor,
          foregroundColor: backgroundColor == Colors.black ? Colors.white : Colors.black
        ),
        child: Text(title,style: TextStyle(color: textColor),),
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SignIn()));
        },
      ),
    );
  }
}