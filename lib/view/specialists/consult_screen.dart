import 'package:aksonhealth/size_config.dart';
import 'package:aksonhealth/theme.dart';
import 'package:aksonhealth/view/specialists/consult_banner.dart';
import 'package:aksonhealth/view/specialists/doctor_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConsultScreen extends StatefulWidget {
  @override
  _ConsultScreenState createState() => _ConsultScreenState();
}

class _ConsultScreenState extends State<ConsultScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                AppBar(
                  title: Text("Consultation",
                      style: GoogleFonts.sora(
                          color: blueColor, fontWeight: FontWeight.bold)),
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 30),
                ConsultBanner(),
                SizedBox(height: 21),
            Padding(
              padding: const EdgeInsets.only(left: 31),
              child: Text(
                'List Doctors',
                style: GoogleFonts.sora(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: blueColor),
              ),
            ),
            SizedBox(height: 14),
                SpecialistScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> showExitPopup() async {
    return await showDialog(
          //show confirm dialogue
          //the return value will be from "Yes" or "No" options
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Message'),
            content: Text('Do you want exit??'),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: greenColor,
                    textStyle: GoogleFonts.sora(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.of(context).pop(false),
                //return false when click on "NO"
                child: Text('No'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                //return true when click on "Yes"
                style: ElevatedButton.styleFrom(
                    primary: redColor,
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
