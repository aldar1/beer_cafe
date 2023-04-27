import 'package:flutter/material.dart';

import 'package:login_1/widgets/widgets.dart';


class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          Image.asset(
            'assets/logo.png',
            height: size.height * 0.2,
          ),
          const ColorFontChar(),
          const SizedBox(height: 10,),
          const Text(
            'B  E  E  R  C  A  F  E',
            style: TextStyle(
              wordSpacing: 10,
              fontWeight: FontWeight.w300,
              fontSize: 16,
            ),
          ),
        ],
      )
    );
  }
}