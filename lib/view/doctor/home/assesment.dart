import 'package:aksonhealth/size_config.dart';
import 'package:aksonhealth/theme.dart';
import 'package:aksonhealth/view/parents/assessment/assesment.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Assesment extends StatelessWidget {
  const Assesment({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: blueColor),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 32, top: 22, bottom: 23, right: 103),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: getRelativeWidth(0.5),
                  height: getRelativeHeight(0.05),
                  child: Text(
                    'Recognize how big your mental disorder is',
                    style: GoogleFonts.sora(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: whiteColor),
                  ),
                ),
                SizedBox(height: 17),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AssesmentQuestion(),
                      ), // Replace "Donasi()" with your actual page route
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: greenColor),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 7),
                      child: Text(
                        'Take Assessment',
                        style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: whiteColor),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
