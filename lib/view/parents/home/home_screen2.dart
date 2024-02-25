import 'package:aksonhealth/constants.dart';
import 'package:aksonhealth/size_config.dart';
import 'package:aksonhealth/theme.dart';
import 'package:aksonhealth/view/alarm/alarm.dart';
import 'package:aksonhealth/view/course/components/list/explore_course_list.dart';
import 'package:aksonhealth/view/doctor/home/assesment.dart';
import 'package:aksonhealth/view/doctor/home/banner2.dart';
import 'package:aksonhealth/view/doctor/home/progress.dart';
import 'package:aksonhealth/view/parents/home/bottomnavbar.dart';
import 'package:aksonhealth/view/parents/home/menu.dart';
import 'package:aksonhealth/view/specialists/consult_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  bool _isVisible = true;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return WillPopScope(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 31, right: 31),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 280,
                          child: RichText(
                            text: TextSpan(
                              style: GoogleFonts.sora(
                                  fontWeight: FontWeight.w600,
                                  color: blueColor,
                                  fontSize: 26),
                              children: [
                                TextSpan(
                                  text: 'Let`s strengthen our ',
                                ),
                                TextSpan(
                                  text: 'mentality',
                                  style: TextStyle(
                                      color:
                                          greenColor), // Mengubah warna menjadi greenColor
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Image.asset(
                            'assets/icons/Bell2.png',
                            width: 18.5,
                            height: 23,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Assesment(),
                  SizedBox(height: 26),
                  Progress(),
                  SizedBox(height: 28),
                  Container(
                    width: getRelativeWidth(0.8),
                    decoration: BoxDecoration(
                        border: Border.all(color: blackColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: getRelativeWidth(0.4),
                              child: Text(
                                  'Need counseling help? make a schedule here')),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ConsultScreen(),
                                ), // Replace "Donasi()" with your actual page route
                              );
                            },
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: greenColor),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18, vertical: 5),
                                  child: Text(
                                    'Join Now',
                                    style: GoogleFonts.sora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 21),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Text(
                          'Tips',
                          style: GoogleFonts.sora(
                              fontSize: 16,
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
                            children: [
                              Banner2(),
                              SizedBox(width: 12),
                              Banner2()
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: 11),
            ],
          ),
        ),
      ),
      onWillPop: showExitPopup,
    );
  }

  Future<bool> showExitPopup() async {
    return await showDialog(
          //show confirm dialogue
          //the return value will be from "Yes" or "No" options
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Do you want exit?'),
            content: Text('Kamu ingin Do you want exit??'),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    textStyle: GoogleFonts.sora(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.of(context).pop(false),
                //return false when click on "NO"
                child: Text('Tidak'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                //return true when click on "Yes"
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    textStyle: GoogleFonts.sora(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                child: Text('Yes'),
              ),
            ],
          ),
        ) ??
        false; //if showDialouge had returned null, then return false
  }
}
