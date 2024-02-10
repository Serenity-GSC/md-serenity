import 'package:aksonhealth/theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleSignupButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.all(4),
        child: OutlinedButton.icon(
          label: Text(
            'Continue with Google',
            style: GoogleFonts.sora(
                fontWeight: FontWeight.bold, fontSize: 13, color: blackColor),
          ),
          style: OutlinedButton.styleFrom(
            shape: null,
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 5),
            // : Colors.black,

            // BorderSide(color: Colors.black),
            // : Colors.black,
          ),
          icon: Image.asset(
            'assets/icons/google_logo.png', // path ke gambar dari aset
            width: 40, // lebar gambar
            height: 40, // tinggi gambar
          ),
          onPressed: () {
            // final provider =
            //     Provider.of<GoogleSignInProvider>(context, listen: false);
            // provider.login();
          },
        ),
      );
}
