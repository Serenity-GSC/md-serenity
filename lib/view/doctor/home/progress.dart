import 'package:aksonhealth/size_config.dart';
import 'package:aksonhealth/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Progress extends StatefulWidget {
  const Progress({super.key});

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Progress Report',
              style: GoogleFonts.sora(
                  fontSize: 16, fontWeight: FontWeight.w600, color: blueColor),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(10)),
              width: getRelativeWidth(0.8),
              height: getRelativeHeight(0.15),
              child: Container(
                  child:
                      Center(child: Text('Please take the assesment first'))),
            )
          ],
        )
      ],
    );
  }
}
