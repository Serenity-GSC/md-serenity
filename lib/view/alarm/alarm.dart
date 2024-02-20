import 'package:aksonhealth/constants.dart';
import 'package:aksonhealth/size_config.dart';
import 'package:aksonhealth/theme.dart';
import 'package:aksonhealth/view/alarm/alarmbox.dart';
import 'package:aksonhealth/view/alarm/chart.dart';

import 'package:aksonhealth/view/alarm/statistic.dart';
import 'package:aksonhealth/view/doctor/home/banner2.dart';
import 'package:aksonhealth/view/parents/home/home_screen2.dart';
import 'package:aksonhealth/view/parents/home/menu.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alarm extends StatefulWidget {
  const Alarm({super.key});

  @override
  State<Alarm> createState() => _AlarmState();
}

class _AlarmState extends State<Alarm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 31),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.sora(
                        fontWeight: FontWeight.w600,
                        color: blueColor,
                        fontSize: 26),
                    children: [
                      TextSpan(
                        text: 'Your',
                      ),
                      TextSpan(
                        text: ' Mission',
                        style: TextStyle(
                            color:
                                greenColor), // Mengubah warna menjadi greenColor
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 21),
              AlarmBox(),
              SizedBox(height: 18),
              Statistic(),
              SizedBox(height: 21),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Text(
                  'Tips',
                  style: GoogleFonts.sora(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: blueColor),
                ),
              ),
              SizedBox(height: 11),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Row(
                    children: [Banner2(), SizedBox(width: 12), Banner2()],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: greyColor, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                HomeScreen2()), // Replace "Donasi()" with your actual page route
                      );
                    },
                    child: Image.asset(
                      'assets/icons/home.png',
                      width: 35,
                      height: 35,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Alarm(),
                      ), // Replace "Donasi()" with your actual page route
                    );
                  },
                  child: Image.asset(
                    'assets/icons/alarmactive.png',
                    width: 35,
                    height: 35,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/icons/community.png',
                      width: 35,
                      height: 35,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/icons/settings.png',
                    width: 35,
                    height: 35,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
