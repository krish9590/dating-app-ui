import 'package:dating_app/commons/RadiaProgress.dart';
import 'package:dating_app/commons/Rounded_image.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const RadialProgress(
          width: 4,
          goalCompleted: 0.9,
          child: //by this Widget the white circle to profile photo appeared
        RoundedImage(

          imagePath: "assets/images/anne.jpeg",
          size: Size.fromWidth(120.0),
        ),
        ),
        const SizedBox(height: 10,),
        const Row(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Anne Grethe",
              style: whiteNameTextStyle,
            ),
            Text(
              "24",
              style: whiteNameTextStyle,
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/location_pin.png",
                width: 15.0, color: Colors.white),
            const Text("34 kilometers", style: whiteSubHeadingTextStyle,),
          ],
        ),
      ],
    ));
  }
}
