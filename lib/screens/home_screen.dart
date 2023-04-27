import 'package:flutter/material.dart';

import 'package:login_1/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Container()),
          const BackgroundWidget(),
          Expanded(child: Container()),
          _ButtonDataLogin(size: size)
        ],
      )
    );
  }
}

class _ButtonDataLogin extends StatelessWidget {
  const _ButtonDataLogin({
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFFADC02),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40)
        )
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: size.height * 0.07,horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.w800
              ),
            ),
            const SizedBox(height: 20,),
            const Text(
              'Voluptate aute excepteur enim duis officia excepteur enim cupidatat Lorem ullamco ipsum pariatur excepteur enim duis officia.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                height: 1.5
              ),
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StyleElevatedButton(title: 'Sign In',backgroundColor: Colors.black,textColor: Colors.white,height: size.height * 0.07,width: size.width * 0.37,),
                const SizedBox(width: 20,),
                StyleElevatedButton(title: 'Sign Up',backgroundColor: Colors.white,textColor: Colors.black,height: size.height * 0.07,width: size.width * 0.37,),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

