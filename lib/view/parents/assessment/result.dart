import 'package:aksonhealth/constants.dart';
import 'package:aksonhealth/size_config.dart';
import 'package:aksonhealth/theme.dart';
import 'package:aksonhealth/view/parents/home/home_screen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    String? gender;
    double containerWidth = 0.2;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        HomeScreen2()), // Replace "Donasi()" with your actual page route
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 40),
              child: Image.asset(
                'assets/icons/back.png',
                width: 38,
                height: 38,
              ),
            ),
          ),
          SizedBox(height: getRelativeWidth(0.2)),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/resultpositive.png',
                  width: 250,
                  height: 250,
                ),
                SizedBox(height: 40),
                Container(
                  width: getRelativeWidth(0.5),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.w600,
                          color: blackColor,
                          fontSize: 18),
                      children: [
                        TextSpan(
                          text: 'You are diagnosed ',
                        ),
                        TextSpan(
                          text: 'with',
                          style: TextStyle(
                              color:
                                  greenColor), // Mengubah warna menjadi greenColor
                        ),
                        TextSpan(
                          text: ' baby blues ',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: getRelativeWidth(0.6),
                  child: RichText(
                    textAlign: TextAlign.center,
                      text: TextSpan(
                          style: GoogleFonts.sora(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: blackColor),
                          children: [
                        TextSpan(text: 'For precautions and information '),
                        TextSpan(
                            text: 'click here',
                            style: TextStyle(decorationThickness: 1))
                      ])),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
