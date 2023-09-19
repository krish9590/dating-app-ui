import 'package:dating_app/commons/my_info.dart';
import 'package:dating_app/commons/opaque_image.dart';
import 'package:dating_app/commons/profile_info_big_card.dart';
import 'package:dating_app/pages/super_likes_me_page.dart';
import 'package:dating_app/styleguide/colors.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';

import '../commons/profile_info_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              const Expanded(
                flex: 4,
                child: Stack(
                  children: <Widget>[
                    OpaqueImage(
                      imageUrl: "assets/images/anne.jpeg",
                    ),
                    SafeArea(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "MY Profile",
                                textAlign: TextAlign.left,
                                style: headingTextStyle,
                              ),
                            ),
                            MyInfo(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(top: 50),
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          const ProfileInfoBigcard(
                            firstText: "13",
                            secondText: "New Matches",
                            icon: Icon(
                              Icons.star,
                              size: 32,
                              color: blueColor,
                            ),
                          ),
                          ProfileInfoBigcard(
                            firstText: "21",
                            secondText: "UnMatched",
                            icon: Image.asset(
                              "assets/icons/sad_smiley.png",
                              color: blueColor,
                              width: 24,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          ProfileInfoBigcard(
                            firstText: "264",
                            secondText: "all Matches",
                            icon: Image.asset(
                              "assets/icons/checklist.png",
                              color: blueColor,
                              width: 32,
                            ),
                          ),
                          const ProfileInfoBigcard(
                            firstText: "42",
                            secondText: "Rematches",
                            icon: Icon(
                              Icons.refresh,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          const ProfileInfoBigcard(
                            firstText: "404",
                            secondText: "Profile visitor",
                            icon: Icon(
                              Icons.remove_red_eye,
                              size: 32,
                              color: blueColor,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => const SuperLikesMePage()),
                              );
                            },
                            child: const ProfileInfoBigcard(
                              
                              firstText: "42",
                              secondText: "Super Likes",
                              icon: Icon(
                                Icons.favorite,
                                size: 32,
                                color: blueColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: screenHeight * (4 / 9) - 80 / 2,
            left: 16,
            right: 16,
            child: const SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  ProfileInfoCard(
                      firstText: "54%",
                      secondText: "Progress"),
                  SizedBox(width: 10,),
                  ProfileInfoCard(
                    hasImage: true,
                    imagePath: "assets/icons/pulse.png",
                  ),
                  SizedBox(width: 10,),
                  ProfileInfoCard(
                    firstText: "152",
                    secondText: "level",
                  ),
                ],
              ),
            ),
            // color: Colors.white
          ),
        ],
      ),
    );
  }
}
