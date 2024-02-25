import 'package:aksonhealth/constants.dart';
import 'package:aksonhealth/size_config.dart';
import 'package:aksonhealth/theme.dart';
import 'package:aksonhealth/view/doctor/bookings/bookings_screen.dart';
import 'package:aksonhealth/view/parents/home/bottomnavbar.dart';
import 'package:aksonhealth/view/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getRelativeWidth(0.06),
              ),
              Text(
                'Settings',
                style: GoogleFonts.sora(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: blueColor),
              ),
              SizedBox(height: getRelativeWidth(0.05)),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade300,
                ),
                width: getRelativeWidth(0.9),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: 'Find Settings that want to change',
                        border: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(height: getRelativeWidth(0.05)),
              Text(
                'Appointmens',
                style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade600),
              ),
              SizedBox(
                height: getRelativeWidth(0.05),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DoctorBookingScreen(),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icons/calender.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(
                          width: getRelativeWidth(0.04),
                        ),
                        Text(
                          'Schedule Appointment',
                          style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getRelativeWidth(0.03),
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 6,
              ),
              SizedBox(height: getRelativeWidth(0.05)),
              Text(
                'Account',
                style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade600),
              ),
              SizedBox(
                height: getRelativeWidth(0.05),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/email.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: getRelativeWidth(0.04),
                  ),
                  Text(
                    'Email',
                    style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: blackColor),
                  )
                ],
              ),
              SizedBox(
                height: getRelativeWidth(0.02),
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 2,
              ),
              SizedBox(
                height: getRelativeWidth(0.02),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/profile.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: getRelativeWidth(0.04),
                  ),
                  Text(
                    'Username',
                    style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: blackColor),
                  )
                ],
              ),
              SizedBox(
                height: getRelativeWidth(0.03),
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 6,
              ),
              SizedBox(height: getRelativeWidth(0.05)),
              Text(
                'Information',
                style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade600),
              ),
              SizedBox(
                height: getRelativeWidth(0.05),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/faq.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: getRelativeWidth(0.04),
                  ),
                  Text(
                    'FAQ',
                    style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: blackColor),
                  )
                ],
              ),
              SizedBox(
                height: getRelativeWidth(0.02),
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 2,
              ),
              SizedBox(
                height: getRelativeWidth(0.02),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/about2.png',
                    width: 24,
                    height: 24,
                  ),
                  SizedBox(
                    width: getRelativeWidth(0.04),
                  ),
                  Text(
                    'About Serenity',
                    style: GoogleFonts.sora(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: blackColor),
                  )
                ],
              ),
              SizedBox(
                height: getRelativeWidth(0.03),
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 6,
              ),
              SizedBox(
                height: getRelativeWidth(0.03),
              ),
              GestureDetector(
                onTap: () {
                  showExitPopup(context);
                },
                child: Row(
                  children: [
                    Image.asset(
                      'assets/icons/logout.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      width: getRelativeWidth(0.04),
                    ),
                    Text(
                      'Log Out',
                      style: GoogleFonts.sora(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.red),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: getRelativeWidth(0.02),
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> showExitPopup(BuildContext context) async {
    return await showDialog(
          //show confirm dialogue
          //the return value will be from "Yes" or "No" options
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Want To Log Out?'),
            content: Text(
                'Make sure all yout activity have been done. Thank you for using Serenity Today.'),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    textStyle: GoogleFonts.sora(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.of(context).pop(false),
                //return false when click on "NO"
                child: Text('No'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SplashScreen()),
                  );
                },
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
