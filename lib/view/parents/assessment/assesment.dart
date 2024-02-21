import 'package:aksonhealth/constants.dart';
import 'package:aksonhealth/size_config.dart';
import 'package:aksonhealth/theme.dart';
import 'package:aksonhealth/view/parents/assessment/result.dart';
import 'package:aksonhealth/view/parents/home/home_screen2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AssesmentQuestion extends StatefulWidget {
  const AssesmentQuestion({super.key});

  @override
  State<AssesmentQuestion> createState() => _AssesmentQuestionState();
}

class _AssesmentQuestionState extends State<AssesmentQuestion> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    String? gender;
    double containerWidth = 0.088;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 40),
        child: Column(
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
              child: Image.asset(
                'assets/icons/back.png',
                width: 38,
                height: 38,
              ),
            ),
            SizedBox(
              height: getRelativeHeight(0.02),
            ),
            Container(
              width: getRelativeWidth(0.4),
              child: Text(
                'Answer the questions below to get results',
                style: GoogleFonts.sora(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: blackColor),
              ),
            ),
            SizedBox(height: getRelativeHeight(0.03)),
            Stack(
              children: [
                // Container pertama
                Container(
                  width: getRelativeWidth(0.8),
                  height: getRelativeWidth(0.02),
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                // Container kedua diletakkan menimpa container pertama
                Positioned(
                  key: UniqueKey(),
                  // Mengatur posisi horizontal sesuai kebutuhan
                  child: Container(
                    width: getRelativeWidth(
                        containerWidth), // Lebar 1/4 dari yang di atas
                    height: getRelativeWidth(0.02),
                    decoration: BoxDecoration(
                      color: greenColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: getRelativeHeight(0.07)),
            Padding(
              padding: const EdgeInsets.only(left: 65),
              child: Image.asset(
                'assets/imagequestion.png',
                width: 200,
                height: 175,
              ),
            ),
            SizedBox(height: getRelativeHeight(0.08)),
            Container(
              width: getRelativeHeight(0.37),
              decoration: BoxDecoration(
                  border: Border.all(color: greenColor),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: getRelativeHeight(0.02),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text(
                      'Do you often feeling sad or tearful?',
                      style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        RadioListTile(
                          title: Text("Yes"),
                          value: "yes",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("No"),
                          value: "no",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        ),
                        RadioListTile(
                          title: Text("Sometimes"),
                          value: "sometimes",
                          groupValue: gender,
                          onChanged: (value) {
                            setState(() {
                              gender = value.toString();
                            });
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: getRelativeHeight(0.05)),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Result()), // Replace "Donasi()" with your actual page route
                );
              },
              child: Container(
                width: getRelativeWidth(0.79),
                decoration: BoxDecoration(
                    color: blueColor, borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 21),
                  child: Center(
                    child: Text(
                      'Next',
                      style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
