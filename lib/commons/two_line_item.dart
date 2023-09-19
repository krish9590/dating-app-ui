import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class TwoLineItem extends StatelessWidget {
  final String firstText, secondText;

  const  TwoLineItem( {required this.firstText, required this.secondText, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          firstText,
          style: titleStyle,
        ),
        Text(
          secondText,
          style: subTitleStyle,
        ),
      ],
    );
  }
}
