import 'package:flutter/material.dart';
import 'package:tune_app/screens/Support/vertical_timeline.dart';

import '../../chatbotAi/screens/chat_screen.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(25, 22, 25, 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 104,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Support",
                            style: TextStyle(
                                color: Color(0xFFFF0000),
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Inter")),
                        Text("How can we help you out?",
                            style: TextStyle(
                                color: Color(0xFF999999),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Inter"))
                      ],
                    )
                  ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Our Support Services",
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Inter")),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ChatScreen()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x14000000),
                                    offset: Offset(0, 4),
                                    blurRadius: 2)
                              ],
                              gradient: LinearGradient(
                                  begin: Alignment(0, -1),
                                  end: Alignment(0, 1),
                                  colors: <Color>[
                                    Color(0xFFFFFFFF),
                                    Color(0xFFFFF9F8)
                                  ],
                                  stops: <double>[
                                    0,
                                    1
                                  ])),
                          width: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Icon(
                                    Icons.live_help_rounded,
                                    size: 24,
                                    color: Color(0xFFFF0000),
                                  )),
                              Text("Chat",
                                  style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Inter")),
                              Text("Chat Support",
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Inter"))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x14000000),
                                    offset: Offset(0, 4),
                                    blurRadius: 2)
                              ],
                              gradient: LinearGradient(
                                  begin: Alignment(0, -1),
                                  end: Alignment(0, 1),
                                  colors: <Color>[
                                    Color(0xFFFFFFFF),
                                    Color(0xFFFFF9F8)
                                  ],
                                  stops: <double>[
                                    0,
                                    1
                                  ])),
                          width: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Icon(
                                    Icons.support_agent_rounded,
                                    size: 24,
                                    color: Color(0xFFFF0000),
                                  )),
                              Text("Help",
                                  style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Inter")),
                              Text("Support Portal",
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Inter"))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x14000000),
                                    offset: Offset(0, 4),
                                    blurRadius: 2)
                              ],
                              gradient: LinearGradient(
                                  begin: Alignment(0, -1),
                                  end: Alignment(0, 1),
                                  colors: <Color>[
                                    Color(0xFFFFFFFF),
                                    Color(0xFFFFF9F8)
                                  ],
                                  stops: <double>[
                                    0,
                                    1
                                  ])),
                          width: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Icon(
                                    Icons.call_rounded,
                                    size: 24,
                                    color: Color(0xFFFF0000),
                                  )),
                              Text("Call Us",
                                  style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Inter")),
                              Text("Hotline Numbers",
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Inter"))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x14000000),
                                    offset: Offset(0, 4),
                                    blurRadius: 2)
                              ],
                              gradient: LinearGradient(
                                  begin: Alignment(0, -1),
                                  end: Alignment(0, 1),
                                  colors: <Color>[
                                    Color(0xFFFFFFFF),
                                    Color(0xFFFFF9F8)
                                  ],
                                  stops: <double>[
                                    0,
                                    1
                                  ])),
                          width: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Icon(
                                    Icons.email_rounded,
                                    size: 24,
                                    color: Color(0xFFFF0000),
                                  )),
                              Text("Send Inquiry",
                                  style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Inter")),
                              Text("Send Us Questions",
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Inter"))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x14000000),
                                    offset: Offset(0, 4),
                                    blurRadius: 2)
                              ],
                              gradient: LinearGradient(
                                  begin: Alignment(0, -1),
                                  end: Alignment(0, 1),
                                  colors: <Color>[
                                    Color(0xFFFFFFFF),
                                    Color(0xFFFFF9F8)
                                  ],
                                  stops: <double>[
                                    0,
                                    1
                                  ])),
                          width: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Icon(
                                    Icons.info_outline_rounded,
                                    size: 24,
                                    color: Color(0xFFFF0000),
                                  )),
                              Text("FAQ",
                                  style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Inter")),
                              Text("Often Asked Issues",
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Inter"))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const VerticalTimeline()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0x14000000),
                                    offset: Offset(0, 4),
                                    blurRadius: 2)
                              ],
                              gradient: LinearGradient(
                                  begin: Alignment(0, -1),
                                  end: Alignment(0, 1),
                                  colors: <Color>[
                                    Color(0xFFFFFFFF),
                                    Color(0xFFFFF9F8)
                                  ],
                                  stops: <double>[
                                    0,
                                    1
                                  ])),
                          width: 155,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 20),
                                  child: Icon(
                                    Icons.wysiwyg_rounded,
                                    size: 24,
                                    color: Color(0xFFFF0000),
                                  )),
                              Text("Inquiry Status",
                                  style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Inter")),
                              Text("Status view",
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Inter"))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Column(
              children: [
                Text("Didn't get the help you need?",
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Inter")),
                SizedBox(height: 20),
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFFF0000), width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Send an email to",
                                    style: TextStyle(
                                        color: Color(0xFF000000),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: "Inter")),
                                InkWell(
                                    onTap: () {},
                                    child: Text("hello.my@tuneprotect.com",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            color: Color(0xFFFF0000),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: "Inter")))
                              ]),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("or visit us at",
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Inter")),
                              Text(
                                  "Level 8, Wisma Tune, 19 Lorong Dungun,Damansara Heights, 50490",
                                  style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "Inter"),
                                  textAlign: TextAlign.center)
                            ])
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
