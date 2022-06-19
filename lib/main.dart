import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopima/constant.dart';
import 'package:shopima/widget/customContainer.dart';
import 'package:shopima/widget/tools.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ProfilePage(),
        backgroundColor: kPrimaryColor,
      ),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    bool isPressed = false;
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SpaceV(20),
          CustomContainer(
              width: media.width,
              height: 200,
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('img/profile.jpeg')),
                      FontText(
                          name: 'Ridwan Abdulwaheed',
                          fontSize: kfontSize16,
                          color: kBlackColor),
                      FontText(
                          name: 'ridwan.rede02@gmail.com',
                          fontSize: kfontSize14,
                          color: kGreyColor),
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        width: 105,
                        height: 30,
                        decoration: BoxDecoration(
                            color: kBlueColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FontText(
                              name: 'Edit Profile',
                              color: kWhiteColor,
                              fontSize: kfontSize14,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: kWhiteColor,
                              size: 15,
                            ),
                          ],
                        ),
                      )
                    ]),
              )),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                child: FontText(
                    name: 'C O N T E N T',
                    fontSize: kfontSize14,
                    color: kTextColor),
              )),
          CustomContainer(
              width: media.width,
              height: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  optionWidget(
                    Icons.favorite_border_outlined,
                    'Favorites',
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: kBorderColor,
                      size: 15,
                    ),
                  ),
                  optionWidget(
                    Icons.download_for_offline_outlined,
                    'Download',
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: kBorderColor,
                      size: 15,
                    ),
                  ),
                ],
              )),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 10),
                child: FontText(
                    name: 'P R E F E N C E S',
                    fontSize: kfontSize14,
                    color: kTextColor),
              )),
          CustomContainer(
              width: media.width,
              height: 250,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'img/website.svg',
                              width: 25,
                              height: 25,
                              color: kBorderColor,
                            ),
                            SpaceH(5),
                            FontText(
                                name: 'Language',
                                fontSize: kfontSize16,
                                color: kBlackColor),
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            FontText(
                                name: 'English',
                                fontSize: kfontSize16,
                                color: kBorderColor),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: kBorderColor,
                              size: 15,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  buttonWidget(
                      isPressed = false,
                      SvgPicture.asset(
                        'img/moon.svg',
                        width: 25,
                        height: 25,
                        color: kBorderColor,
                      ),
                      'Dark Mode'),
                  buttonWidget(
                      isPressed = false,
                      const Icon(
                        Icons.wifi,
                        color: kBorderColor,
                      ),
                      'Only Download via Wifi'),
                  buttonWidget(
                      isPressed = false,
                      const Icon(
                        Icons.cast_connected_outlined,
                        color: kBorderColor,
                      ),
                      'Play in Background'),
                ],
              )),
        ],
      ),
    );
  }

  Row buttonWidget(bool isPressed, Widget Icon, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Icon,
              SpaceH(5),
              FontText(name: text, fontSize: kfontSize16, color: kBlackColor),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            if (isPressed == true) {
              setState(() {
                isPressed = false;
                print('isPressed :$isPressed');
              });
            } else if (isPressed == false) {
              setState(() {
                isPressed = true;
                print('isPressed :$isPressed');
              });
            }
          },
          child: Container(
            width: 60,
            height: 40,
            decoration: BoxDecoration(
                color: isPressed ? kBlackColor : kPrimaryColor,
                borderRadius: BorderRadius.circular(20)),
            child: Align(
              alignment:
                  isPressed ? Alignment.centerRight : Alignment.centerLeft,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    boxShadow: [
                      BoxShadow(
                          color: kBlackColor.withOpacity(0.1), blurRadius: 8)
                    ],
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
