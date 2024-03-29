import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:aksonhealth/view/auth/login/login_screen.dart';
import 'package:aksonhealth/view/onboarding/onboarding_1.dart';
import 'package:aksonhealth/view/onboarding/onboarding_2.dart';
import 'package:aksonhealth/view/onboarding/onboarding_3.dart';
import 'package:aksonhealth/theme.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;

  void _selectUserType(String userType) {
    if (userType == 'Parents') {
      Get.to(() => LoginScreen(userType: 'Parents'));
    } else if (userType == 'Doctors') {
      Get.to(() => LoginScreen(userType: 'Doctors'));
    }
  }

  void _handleTap(String userType) {
    if (userType == 'Parents') {
      Get.to(() => LoginScreen(userType: 'Parents'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Wrap your app with GetMaterialApp
      home: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  onLastPage = index == 3;
                });
              },
              children: const [
                Onboarding1Screen(),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              LoginScreen(userType: 'Parents'),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: blueColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 13.0,
                            horizontal: 100.0,
                          ),
                          child: Center(
                            child: Text(
                              'Lets Get Started',
                              style: GoogleFonts.sora(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  // onLastPage
                  //     ? SizedBox(
                  //         height: 18,
                  //       )
                  //     : GestureDetector(
                  //         onTap: () {
                  //           Get.to(() => LoginScreen(
                  //                 userType: 'Doctors',
                  //               ));
                  //         },
                  //         child: Text(
                  //           'Lewati',
                  //           style: GoogleFonts.sora(
                  //             color: blueColor,
                  //             fontSize: 15,
                  //             fontWeight: FontWeight.w600,
                  //           ),
                  //         ),
                  //       ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
