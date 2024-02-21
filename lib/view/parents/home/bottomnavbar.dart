import 'package:aksonhealth/constants.dart';
import 'package:aksonhealth/view/alarm/alarm.dart';
import 'package:aksonhealth/view/parents/home/home_screen2.dart';
import 'package:aksonhealth/view/parents/settings/main.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final int active;
  const BottomNav({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(width: 1, color: greyColor))),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                    active == 0
                        ? 'assets/icons/homeactive.png' // Cek status aktif/nonaktif
                        : 'assets/icons/home.png',
                    width: 35,
                    height: active == 0 ? 50 : 35,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Alarm(),
                      ), // Replace "Donasi()" with your actual page route
                    );
                  },
                  child: Image.asset(
                    active == 1
                        ? 'assets/icons/alarmactive.png' // Cek status aktif/nonaktif
                        : 'assets/icons/alarm.png',
                    width: 35,
                    height: active == 1 ? 50 : 35,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    active == 2
                        ? 'assets/icons/communityactive.png'
                        : 'assets/icons/community.png',
                    width: 35,
                    height: active == 2 ? 50 : 35,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Settings()), 
                    );
                  },
                  child: Image.asset(
                    active == 3
                        ? 'assets/icons/settingsactive.png'
                        : 'assets/icons/settings.png',
                    width: 35,
                    height: active == 3 ? 45 : 35,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
