import 'package:aksonhealth/size_config.dart';
import 'package:aksonhealth/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Banner2 extends StatefulWidget {
  const Banner2({super.key});

  @override
  State<Banner2> createState() => _Banner2State();
}

class _Banner2State extends State<Banner2> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(58, 163, 163, 163), // Warna bayangan
                blurRadius:
                    1.900000095367432, // Radius blur (semakin besar nilainya, semakin besar blur)
              ),
            ],
          ),
          width: getRelativeWidth(0.60),
          height: getRelativeHeight(0.19),
          child: Column(
            children: [
              Image.asset('assets/banner-content.png'),
              Container(
                  width: 235,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 13),
                    child: Text(
                      'Cara mengurangi resiko stress dan mengatur waktu tidur',
                      style: GoogleFonts.sora(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: blackColor),
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
