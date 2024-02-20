import 'package:aksonhealth/theme.dart';
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
      body: Column(
        children: [
          RichText(
            text: TextSpan(
              style: GoogleFonts.sora(
                  fontWeight: FontWeight.w600, color: blueColor, fontSize: 26),
              children: [
                TextSpan(
                  text: 'Let`s strengthen our ',
                ),
                TextSpan(
                  text: 'mentality',
                  style: TextStyle(
                      color: greenColor), // Mengubah warna menjadi greenColor
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
