import 'package:flutter/material.dart';
import 'package:dating_app/styleguide/colors.dart';



class OpaqueImage extends StatelessWidget {
  // const OpaqueImage({super.key});

  final imageUrl;

  const OpaqueImage({Key? key, @required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(imageUrl, width: double.maxFinite,
        height: double.maxFinite,
        fit: BoxFit.fill),
      Container(color: primaryColorOpacity.withOpacity(0.85),
      ),

    ],
    );

  }
}
