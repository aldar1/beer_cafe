import 'package:flutter/material.dart';
import 'package:login_1/screens/screens.dart';

class SplashScreen extends StatelessWidget{
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context){
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen())),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: const [
            _BackgroundCircleSplash(aligment: Alignment.topRight,radiusBottomLeft: 600,radiusTopRight: 0,x: 25.0,y: -70.0,width: 250,),
            BackgroundWidget(),
            _BackgroundCircleSplash(aligment: Alignment.bottomLeft,radiusBottomLeft: 0,radiusTopRight: 1000,x: -90.00,y: 20.00,width: 300,)
          ],
        ),
      ),
    );
  }
}

class _BackgroundCircleSplash extends StatelessWidget {
  final double x;
  final double y;
  final AlignmentGeometry aligment;
  final double width;
  final double radiusTopRight;
  final double radiusBottomLeft;
  const _BackgroundCircleSplash({
    required this.x, 
    required this.y,
    required this.aligment, 
    required this.width, 
    required this.radiusTopRight, 
    required this.radiusBottomLeft, 
  });


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: aligment,
        child: Transform.translate(
          offset: Offset(x,y), //-60 50
          child: Container(
            width: width,
            decoration: BoxDecoration(
              color: const Color(0xFFFFB900),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(radiusTopRight),
                bottomLeft: Radius.circular(radiusBottomLeft),
              )
            ),
          ),
        ),
      ),
    );
  }
}