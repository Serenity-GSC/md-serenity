import 'package:aksonhealth/constants.dart';
import 'package:aksonhealth/size_config.dart';
import 'package:aksonhealth/theme.dart';
import 'package:aksonhealth/view/alarm/chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Statistic extends StatefulWidget {
  const Statistic({super.key});

  @override
  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 31),
              child: Text(
                'Statistics',
                style: GoogleFonts.sora(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: blueColor),
              ),
            ),
            SizedBox(height: 14),
            Center(
              child: Container(
                decoration: BoxDecoration(
                    color: blueColor, borderRadius: BorderRadius.circular(10)),
                width: getRelativeWidth(0.85),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sleep Rating',
                                style: GoogleFonts.sora(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: greyColor),
                              ),
                              Text(
                                '70%',
                                style: GoogleFonts.sora(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          SizedBox(height: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/moon.png',
                                    width: 16,
                                    height: 16,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Time Asleep',
                                    style: GoogleFonts.sora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: greyColor),
                                  )
                                ],
                              ),
                              SizedBox(height: 5),
                              RichText(
                                  text: TextSpan(
                                      style: GoogleFonts.sora(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                      children: [TextSpan(text: '7h 00min')]))
                            ],
                          ),
                          SizedBox(height: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/bed.png',
                                    width: 16,
                                    height: 16,
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Time in bed',
                                    style: GoogleFonts.sora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: greyColor),
                                  )
                                ],
                              ),
                              SizedBox(height: 5),
                              RichText(
                                  text: TextSpan(
                                      style: GoogleFonts.sora(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                      children: [
                                    TextSpan(
                                        text: '00:30 - 07:00',
                                        style: GoogleFonts.sora(
                                            fontWeight: FontWeight.w600))
                                  ]))
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
