import 'package:aksonhealth/data/data.dart';
import 'package:aksonhealth/size_config.dart';
import 'package:aksonhealth/theme.dart';
import 'package:aksonhealth/view/chatbot/chat_screen.dart';
import 'package:aksonhealth/view/parents/clinic/clinic_screen.dart';
import 'package:aksonhealth/view/parents/clinic/clinic_test.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Container(
        height: getRelativeHeight(0.085),
        child: ListView.builder(
          itemCount: Data.categoriesList.length,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: getRelativeWidth(0.035)),
          itemBuilder: (context, index) {
            final category = Data.categoriesList[index];
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: getRelativeHeight(0.1),
                  constraints: BoxConstraints(minWidth: getRelativeWidth(0.41)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: getRelativeWidth(0.03)),
                    child: Row(
                      children: [
                        Container(
                            padding: EdgeInsets.all(getRelativeWidth(0.025)),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    blueColor,
                                    darkBlueColor,
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              category.icon,
                              color: Colors.white,
                              size: getRelativeWidth(0.075),
                            )),
                        SizedBox(width: getRelativeWidth(0.02)),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              category.title,
                              style: GoogleFonts.sora(
                                  fontSize: getRelativeWidth(0.038),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: getRelativeHeight(0.005)),
                            Text(
                              "There will be new features",
                              style: GoogleFonts.sora(
                                  color: Colors.black.withOpacity(0.48),
                                  fontSize: getRelativeWidth(0.03)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatScreenBot()));
                    },
                    child: Text('Start', style: GoogleFonts.sora(fontSize: 16, color: blueColor),)),
                SizedBox(width: getRelativeWidth(0.04))
              ],
            );
          },
        ));
  }
}
