import 'package:aksonhealth/constants.dart';
import 'package:aksonhealth/view/alarm/alarm.dart';
import 'package:aksonhealth/view/parents/community/community.dart';
import 'package:aksonhealth/view/parents/home/home_screen2.dart';
import 'package:aksonhealth/view/parents/settings/main.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  List<Widget> widgetList = const [
    HomeScreen2(),
    Alarm(),
    Community(),
    Settings()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
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
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                child: Image.asset(
                  _currentIndex == 0
                      ? 'assets/icons/homeactive.png' // Cek status aktif/nonaktif
                      : 'assets/icons/home.png',
                  width: 35,
                  height: _currentIndex == 0 ? 50 : 35,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                child: Image.asset(
                  _currentIndex == 1
                      ? 'assets/icons/alarmactive.png' // Cek status aktif/nonaktif
                      : 'assets/icons/alarm.png',
                  width: 35,
                  height: _currentIndex == 1 ? 50 : 35,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                child: Image.asset(
                  _currentIndex == 2
                      ? 'assets/icons/communityactive.png'
                      : 'assets/icons/community.png',
                  width: 35,
                  height: _currentIndex == 2 ? 50 : 35,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = 3;
                  });
                },
                child: Image.asset(
                  _currentIndex == 3
                      ? 'assets/icons/settingsactive.png'
                      : 'assets/icons/settings.png',
                  width: 35,
                  height: _currentIndex == 3 ? 45 : 35,
                ),
              )
            ],
          ),
        ),
      ),
      body: Center(
        child: widgetList[_currentIndex],
      ),
    );
  }
}
