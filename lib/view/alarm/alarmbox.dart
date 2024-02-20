import 'package:aksonhealth/constants.dart';
import 'package:aksonhealth/size_config.dart';
import 'package:aksonhealth/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlarmBox extends StatefulWidget {
  const AlarmBox({super.key});

  @override
  State<AlarmBox> createState() => _AlarmBoxState();
}

class _AlarmBoxState extends State<AlarmBox> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            decoration: BoxDecoration(
                color: blueColor, borderRadius: BorderRadius.circular(10)),
            width: getRelativeWidth(0.85),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/time.png',
                            width: 36,
                            height: 36,
                          ),
                          SizedBox(width: 10),
                          Text(
                            'Schedule',
                            style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Sleep Debt',
                            style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: greyColor),
                          ),
                          Text(
                            ' : 3 Hours',
                            style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Baby Wake Up',
                            style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: greyColor),
                          ),
                          SizedBox(height: 9),
                          Row(
                            children: [
                              Text(
                                '23:50',
                                style: GoogleFonts.sora(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                ' PM',
                                style: GoogleFonts.sora(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Baby Sleep Time',
                            style: GoogleFonts.sora(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: greyColor),
                          ),
                          SizedBox(height: 9),
                          Row(
                            children: [
                              Text(
                                '02:00',
                                style: GoogleFonts.sora(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                              Text(
                                ' AM',
                                style: GoogleFonts.sora(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                        color: greenColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 21, vertical: 7),
                      child: Text(
                        '+ Set Time',
                        style: GoogleFonts.sora(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
