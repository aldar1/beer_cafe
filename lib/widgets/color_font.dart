import 'package:flutter/material.dart';

class ColorFontChar extends StatelessWidget {
  const ColorFontChar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        _LetterColor(letterColor: 'd',aciveColor: true),
        _LetterColor(letterColor: 'e',aciveColor: false),
        _LetterColor(letterColor: 'e',aciveColor: false),
        _LetterColor(letterColor: 'p',aciveColor: true),
        _LetterColor(letterColor: 's',aciveColor: false),
      ],
    );
  }
}

class _LetterColor extends StatelessWidget {
  final String letterColor;
  final bool aciveColor;
  const _LetterColor({
    required this.letterColor,
    required this.aciveColor
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 40
    );
    return aciveColor ? Stack(
      children: [
        Positioned(
          top: 20,
          left: 2,
          child: Container(
            width: 20,
            height: 19,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.amber
            ),
          ),
        ),
        Text(
          letterColor,
          style: textStyle,
        ),
      ],
    )
    : Text(
        letterColor,
        style: textStyle
      );
  }
}