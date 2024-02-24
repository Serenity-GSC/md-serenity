import 'package:aksonhealth/constants.dart';
import 'package:aksonhealth/size_config.dart';
import 'package:aksonhealth/theme.dart';
import 'package:aksonhealth/view/alarm/alarm.dart';
import 'package:aksonhealth/view/course/components/list/explore_course_list.dart';
import 'package:aksonhealth/view/doctor/home/assesment.dart';
import 'package:aksonhealth/view/doctor/home/banner2.dart';
import 'package:aksonhealth/view/doctor/home/progress.dart';
import 'package:aksonhealth/view/parents/home/bottomnavbar.dart';
import 'package:aksonhealth/view/parents/home/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return WillPopScope(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  children: [
                    SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.only(left: 31, right: 31),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 280,
                            child: RichText(
                              text: TextSpan(
                                style: GoogleFonts.sora(
                                    fontWeight: FontWeight.w600,
                                    color: blueColor,
                                    fontSize: 26),
                                children: [
                                  TextSpan(
                                    text: 'Let`s strengthen our ',
                                  ),
                                  TextSpan(
                                    text: 'mentality',
                                    style: TextStyle(
                                        color:
                                            greenColor), // Mengubah warna menjadi greenColor
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Image.asset(
                              'assets/icons/Bell2.png',
                              width: 18.5,
                              height: 23,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Assesment(),
                    SizedBox(height: 26),
                    Progress(),
                    SizedBox(height: 28),
                    Container(
                      width: getRelativeWidth(0.8),
                      decoration: BoxDecoration(
                          border: Border.all(color: blackColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: getRelativeWidth(0.4),
                                child: Text(
                                    'Need counseling help? make a schedule here')),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: greenColor),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 18, vertical: 5),
                                    child: Text(
                                      'Join Now',
                                      style: GoogleFonts.sora(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 21),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            'Tips',
                            style: GoogleFonts.sora(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: blueColor),
                          ),
                        ),
                        SizedBox(height: 11),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Row(
                              children: [
                                Banner2(),
                                SizedBox(width: 12),
                                Banner2()
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 11),
              ],
            ),
          ),
         ),
      onWillPop: showExitPopup,
    );
  }

  Future<bool> showExitPopup() async {
    return await showDialog(
          //show confirm dialogue
          //the return value will be from "Yes" or "No" options
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Keluar Aplikasi'),
            content: Text('Kamu ingin keluar aplikasi?'),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    textStyle: GoogleFonts.sora(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.of(context).pop(false),
                //return false when click on "NO"
                child: Text('Tidak'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(true),
                //return true when click on "Yes"
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    textStyle: GoogleFonts.sora(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                child: Text('Ya'),
              ),
            ],
          ),
        ) ??
        false; //if showDialouge had returned null, then return false
  }
}

// class ExpandingAppBar extends ConsumerWidget {
//   const ExpandingAppBar(
//       {Key? key,
//       this.children = const <Widget>[],
//       this.mainAxisAlignment = MainAxisAlignment.start})
//       : super(key: key);

//   final List<Widget> children;
//   final MainAxisAlignment mainAxisAlignment;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     RoundedHeaderState state = ref.watch(roundedHeaderProvider);

//     return SliverAppBar(
//       expandedHeight: state.highestHeight,
//       pinned: true,
//       backgroundColor: darkBlueColor,
//       primary: true,
//       forceElevated: true,
//       title: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20),
//         child: Column(children: [
//           Text(
//             "Akson",
//             style: GoogleFonts.sourceSerif4(
//                 fontSize: 30, color: Color.fromARGB(255, 236, 236, 236)),
//           ),
//         ]),
//       ),
//       shape: RoundedRectangleBorder(
//         borderRadius:
//             BorderRadius.vertical(bottom: Radius.circular(state.radius)),
//       ),
//       flexibleSpace: LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//           // We update the state here.
//           ref
//               .read(roundedHeaderProvider.notifier)
//               .updateHeight(constraints.maxHeight);

//           return Opacity(
//             opacity: state.scrollFraction,
//             child: Padding(
//               padding: EdgeInsets.only(top: state.smallestHeight),
//               child: Column(
//                   mainAxisAlignment: mainAxisAlignment, children: children),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// @immutable
// class RoundedHeaderState {
//   final double highestHeight = 200;
//   final double smallestHeight = kToolbarHeight + 24;
//   final double currentHeight;
//   final double contentOpacity = 1;

//   const RoundedHeaderState({this.currentHeight = 256});

//   double get scrollFraction => min(
//       max((currentHeight - smallestHeight) / (highestHeight - smallestHeight),
//           0),
//       1);
//   double get radius => 130 * scrollFraction;
// }

// class RoundedHeaderNotifier extends StateNotifier<RoundedHeaderState> {
//   RoundedHeaderNotifier() : super(const RoundedHeaderState());

//   updateHeight(double currentHeight) {
//     final newState = RoundedHeaderState(currentHeight: currentHeight);

//     // Check that the new state is not equal to the next (prevents rebuild loop)
//     if (state.currentHeight != newState.currentHeight) {
//       // Setting state triggers an rebuild, the PostFrameCallback let Flutter
//       // postpone the upcoming rebuild at a later time.
//       WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//         state = newState;
//       });
//     }
//   }
// }

// final roundedHeaderProvider =
//     StateNotifierProvider<RoundedHeaderNotifier, RoundedHeaderState>((ref) {
//   return RoundedHeaderNotifier();
// });
