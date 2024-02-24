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
  int currentQuestionIndex = 0;
  double containerWidth = 0.08888889;
  String? gender;

  List<Map<String, dynamic>> assessmentQuestions = [
    {
      'question': 'How Old Are You?',
      'answers': ['25-30', '30-35', '35-40', '40-45', '45-50']
    },
    {
      'question': 'Do you often feel sad or tearful?',
      'answers': ['No', 'Sometimes', 'Yes']
    },
    {
      'question': 'Do you often feel irritable towards baby and partner?',
      'answers': ['No', 'Sometimes', 'Yes']
    },
    {
      'question': 'Do you often feel trouble sleeping at night?',
      'answers': ['No', 'Two or more days a week', 'Yes']
    },
    {
      'question':
          'Do you often feel problems concentrating or making decision?',
      'answers': ['No', 'Often', 'Yes']
    },
    {
      'question': 'Do you often feel overeating or loss of appetite?',
      'answers': ['No', 'Not at all', 'Yes']
    },
    {
      'question': 'Do you often feel feeling of guilt?',
      'answers': ['Maybe', 'No', 'Yes']
    },
    {
      'question': 'Do you have problems of bonding with baby?',
      'answers': ['No', 'Sometimes', 'Yes']
    },
    {
      'question': 'Do you have feel to suicide attempt?',
      'answers': ['No', 'Not interested to say', 'Yes']
    },
    // Add more questions here
  ];

  void _goToNextQuestion() {
    setState(() {
      if (currentQuestionIndex < assessmentQuestions.length - 1) {
        currentQuestionIndex++;
        containerWidth += 0.08888889; // Update progress bar width
      } else {
        // Jika sudah mencapai pertanyaan terakhir, navigasi ke halaman hasil
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Result()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    String? gender;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                    Navigator.pop(context);
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
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 3000), // Durasi animasi
                      curve: Curves.easeInOut, // Kurva animasi
                      width: getRelativeWidth(containerWidth),
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
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: getRelativeHeight(0.02)),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Text(
                        assessmentQuestions[currentQuestionIndex]['question'],
                        style: GoogleFonts.sora(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: blackColor,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Column(
                        children: [
                          for (String answer
                              in assessmentQuestions[currentQuestionIndex]
                                  ['answers'])
                            RadioListTile(
                              title: Text(answer),
                              value: answer,
                              groupValue: gender,
                              onChanged: (value) {
                                setState(() {
                                  gender = value.toString();
                                });
                              },
                            ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: getRelativeHeight(0.05)),
              GestureDetector(
                onTap: () {
                  _goToNextQuestion();
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
              ),
              SizedBox(height: getRelativeHeight(0.05)),
            ],
          ),
        ),
      ),
    );
  }
}
