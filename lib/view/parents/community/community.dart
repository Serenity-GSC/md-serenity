import 'package:aksonhealth/constants.dart';
import 'package:aksonhealth/size_config.dart';
import 'package:aksonhealth/theme.dart';
import 'package:aksonhealth/view/parents/community/message.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  int _active = 0;
  List<String> button = const ['Trending', 'Baby', 'Baby Blues', 'Mentality'];
  List<Message> messages = [
    Message(
        profileName: 'John Doue',
        text:
            'What do you feel, when first know that you detected have baby blues?',
        likes: 10,
        comments: 5,
        photo: 'assets/icons/profile1.png'),
    Message(
        profileName: 'Alice',
        text:
            'What do you feel, when first know that you detected have baby blues?',
        likes: 15,
        comments: 3,
        photo: 'assets/icons/profile2.png'),
    Message(
        profileName: 'Bob',
        text:
            'What do you feel, when first know that you detected have baby blues?',
        likes: 20,
        comments: 8,
        photo: 'assets/icons/profile3.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 31, top: 65),
            child: RichText(
              text: TextSpan(
                style: GoogleFonts.sora(
                    fontWeight: FontWeight.w600,
                    color: blueColor,
                    fontSize: 26),
                children: [
                  TextSpan(
                    text: 'Community',
                  ),
                  TextSpan(
                    text: ' Hub',
                    style: TextStyle(
                        color: greenColor), // Mengubah warna menjadi greenColor
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: getRelativeHeight(0.02),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  button.length,
                  (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _active = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: _active == index ? blueColor : greyColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            button[index],
                            style: GoogleFonts.sora(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: getRelativeHeight(0.03),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 31),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/icons/profile1.png',
                              width: 35,
                              height: 35,
                            ),
                            SizedBox(
                              width: getRelativeWidth(0.05),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Coal Dingo',
                                      style: GoogleFonts.sora(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff573926),
                                      ),
                                    ),
                                    SizedBox(
                                      width: getRelativeWidth(0.03),
                                    ),
                                    Text(
                                      'just now',
                                      style: GoogleFonts.sora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff707070),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: getRelativeHeight(0.01),
                                ),
                                Container(
                                  width: getRelativeWidth(0.6),
                                  child: Text(
                                      'What do you feel, when first know that you detected have baby blues?'),
                                ),
                                SizedBox(
                                  height: getRelativeHeight(0.01),
                                ),
                                Container(
                                  width: getRelativeWidth(0.7),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/icons/like.png',
                                                width: 20,
                                                height: 20,
                                              ),
                                              Text('2')
                                            ],
                                          ),
                                          SizedBox(
                                              width: getRelativeWidth(0.03)),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/icons/comment.png',
                                                width: 20,
                                                height: 20,
                                              ),
                                              Text('4')
                                            ],
                                          ),
                                        ],
                                      ),
                                      Image.asset(
                                        'assets/icons/share.png',
                                        width: 20,
                                        height: 20,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: getRelativeHeight(0.02),
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getRelativeHeight(0.02),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/icons/profile1.png',
                              width: 35,
                              height: 35,
                            ),
                            SizedBox(
                              width: getRelativeWidth(0.05),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Coal Dingo',
                                      style: GoogleFonts.sora(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff573926),
                                      ),
                                    ),
                                    SizedBox(
                                      width: getRelativeWidth(0.03),
                                    ),
                                    Text(
                                      'just now',
                                      style: GoogleFonts.sora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff707070),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: getRelativeHeight(0.01),
                                ),
                                Container(
                                  width: getRelativeWidth(0.6),
                                  child: Text(
                                      'What do you feel, when first know that you detected have baby blues?'),
                                ),
                                SizedBox(
                                  height: getRelativeHeight(0.01),
                                ),
                                Container(
                                  width: getRelativeWidth(0.7),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/icons/like.png',
                                                width: 20,
                                                height: 20,
                                              ),
                                              Text('2')
                                            ],
                                          ),
                                          SizedBox(
                                              width: getRelativeWidth(0.03)),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/icons/comment.png',
                                                width: 20,
                                                height: 20,
                                              ),
                                              Text('4')
                                            ],
                                          ),
                                        ],
                                      ),
                                      Image.asset(
                                        'assets/icons/share.png',
                                        width: 20,
                                        height: 20,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: getRelativeHeight(0.02),
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getRelativeHeight(0.02),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/icons/profile1.png',
                              width: 35,
                              height: 35,
                            ),
                            SizedBox(
                              width: getRelativeWidth(0.05),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Coal Dingo',
                                      style: GoogleFonts.sora(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xff573926),
                                      ),
                                    ),
                                    SizedBox(
                                      width: getRelativeWidth(0.03),
                                    ),
                                    Text(
                                      'just now',
                                      style: GoogleFonts.sora(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xff707070),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: getRelativeHeight(0.01),
                                ),
                                Container(
                                  width: getRelativeWidth(0.6),
                                  child: Text(
                                      'What do you feel, when first know that you detected have baby blues?'),
                                ),
                                SizedBox(
                                  height: getRelativeHeight(0.01),
                                ),
                                Container(
                                  width: getRelativeWidth(0.7),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/icons/like.png',
                                                width: 20,
                                                height: 20,
                                              ),
                                              Text('2')
                                            ],
                                          ),
                                          SizedBox(
                                              width: getRelativeWidth(0.03)),
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/icons/comment.png',
                                                width: 20,
                                                height: 20,
                                              ),
                                              Text('4')
                                            ],
                                          ),
                                        ],
                                      ),
                                      Image.asset(
                                        'assets/icons/share.png',
                                        width: 20,
                                        height: 20,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: getRelativeHeight(0.02),
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey.shade300,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
