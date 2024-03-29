// <<<<<<< HEAD
import 'package:aksonhealth/theme.dart';
import 'package:aksonhealth/view/alarm/alarm.dart';
import 'package:aksonhealth/view/course/screens/home_screen.dart';
import 'package:aksonhealth/view/gamification/pages/home_page.dart';
// >>>>>>> 7c011123d9d6daca0b7e98595e0539787a0de769
import 'package:aksonhealth/view/parenting/grid.dart';
import 'package:aksonhealth/view/parents/clinic/clinic_test.dart';
import 'package:aksonhealth/view/parents/home/home_screen2.dart';
import 'package:aksonhealth/view/parents/schools/schools.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../donasi/donasi.dart';
import '../../event/event.dart';
import '../../../size_config.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/homeactive.png", "text": "Home"},
      {"icon": "assets/icons/alarm.png", "text": "Alarm"},
      {"icon": "assets/icons/community.png", "text": "Community"},
      {"icon": "assets/icons/settings.png", "text": "Settings"},
    ];

    List<Map<String, dynamic>> categorize = [
      {"icon": "assets/icons/training.png", "text": "Pelatihan"},
      {"icon": "assets/icons/event.png", "text": "Event"},
      {"icon": "assets/icons/forum.png", "text": "Forum"},
      {"icon": "assets/icons/charity.png", "text": "Donasi"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 41, vertical: 0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              categories.length,
              (index) => CategoryCard(
                icon: categories[index]["icon"],
                text: categories[index]["text"],
                press: () {
                  if (categories[index]["text"] == "Home") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HomeScreen2()), // Replace "Donasi()" with your actual page route
                    );
                  } else if (categories[index]["text"] == "Alarm") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Alarm(),
                      ), // Replace "Donasi()" with your actual page route
                    );
                  } else if (categories[index]["text"] == "Permainan") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ), // Replace "Donasi()" with your actual page route
                    );
                  } else if (categories[index]["text"] == "Parenting") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Grid(),
                      ), // Replace "Donasi()" with your actual page route
                    );
                  }
                },
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: List.generate(
          //     categorize.length,
          //     (index) => CategoryCard(
          //       icon: categorize[index]["icon"],
          //       text: categorize[index]["text"],
          //       press: () {
          //         if (categorize[index]["text"] == "Donasi") {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) => Donation(),
          //             ), // Replace "Donasi()" with your actual page route
          //           );
          //         } else if (categorize[index]["text"] == "Pelatihan") {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => CourseScreen(),
                    //   ), // Replace "Donasi()" with your actual page route
                    // );
          //         } else if (categorize[index]["text"] == "Event") {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) => EventScreen(),
          //             ), // Replace "Donasi()" with your actual page route
          //           );
          //         } else if (categorize[index]["text"] == "Forum") {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //               builder: (context) => AlertDialog(
          //                 backgroundColor: const Color.fromARGB(
          //                     255, 255, 255, 255), // Warna biru
          //                 content: Column(
          //                   mainAxisSize: MainAxisSize.min,
          //                   children: [
          //                     Image.asset(
          //                       'assets/images/development.png', // Ganti dengan path gambar yang sesuai
          //                       width: 200,
          //                       height: 200,
          //                     ),
          //                     SizedBox(height: 16),
          //                     Text(
          //                       'Maaf fitur ini sedang dikembangkan ke tahap lanjut',
          //                       style: GoogleFonts.sora(
          //                           color: darkBlueColor, fontSize: 20),
          //                     ),
          //                     SizedBox(height: 20),
          //                   ],
          //                 ),
          //                 actions: [
          //                   TextButton(
          //                     onPressed: () {
          //                       Navigator.of(context).pop();
          //                     },
          //                     child: Text(
          //                       'Oke',
          //                       style: TextStyle(color: darkBlueColor),
          //                     ),
          //                   ),
          //                 ],
          //               ),
          //             ), // Replace "Donasi()" with your actual page route
          //           );
          //         }
          //       },
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 16,
          // ),
          // TextButton(
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => PhonetikList()));
          //   },
          //   child: Text('Phonetic Testing'),
          // ),
          // TextButton(
          //   onPressed: () {
          //     Navigator.push(context,
          //         MaterialPageRoute(builder: (context) => NewPhoneticList()));
          //   },
          //   child: Text('New Phonetic Testing'),
          // ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String? icon, text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: getScreenWidth(60), // Mengubah lebar container
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20), // Mengubah padding
              height: getScreenWidth(52), // Mengubah tinggi container
              width: getScreenWidth(70), // Mengubah lebar container
              child: Image.asset(
                icon!,
                height: 35,
                width: 35,
              ),
            ),
            SizedBox(height: 0), // Mengubah jarak antara ikon dan teks
          ],
        ),
      ),
    );
  }
}
