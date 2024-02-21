// ignore_for_file: prefer_const_constructors
import 'package:aksonhealth/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({Key? key, this.color}) : super(key: key);
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 255, 255, 255),
                Color.fromARGB(255, 255, 255, 255),
              ],
              stops: [
                0.0,
                1.0,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            child: Image.asset(
              'assets/logo.png',
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.22),
            child: Image.asset(
              'assets/onboarding.png',
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.49,
            padding: EdgeInsets.only(
              top: 90,
              left: 34,
              right: 34,
              bottom: MediaQuery.of(context).size.height *
                  0.05, // Adjust bottom padding as per mockup
            ),
            child: Column(
              mainAxisSize:
                  MainAxisSize.min, // Ensure the column takes minimum space
              children: [
                Text(
                  'Everything you need to be a good parent is here',
                  style: GoogleFonts.sora(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: blackColor,
                  ),
                ),
                SizedBox(
                    height:
                        12), // You may need to adjust this size to match the mockup
                Text(
                  'Help you find out are you baby blues or not and help you be a good parent for your baby',
                  style: GoogleFonts.sora(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: grayColor,
                  ),
                ),
                // Add any additional widgets for buttons or navigation here
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
