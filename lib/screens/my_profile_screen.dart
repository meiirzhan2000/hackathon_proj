import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../auth.dart';
import '../pages/login_screen.dart';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(25, 22, 25, 22),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 104,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text("My Profile",
                        style: TextStyle(
                            color: Color(0xFFFF0000),
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter")),
                    Spacer(),
                    IconButton(
                        onPressed: () {
                          context.read<Auth>().signOut(context);
                          Navigator.pushNamed(context, LoginScreen.routeName);
                        },
                        icon: Icon(Icons.logout_rounded, size: 24))
                  ]),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Account & Personalization Settings",
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Inter")),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Personal Details & Contact Info",
                              style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter")),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Color(0xFF999999),
                          )
                        ],
                      ),
                      Divider(
                        color: Color(0xFF999999),
                        thickness: 1,
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Change PIN",
                              style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter")),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Color(0xFF999999),
                          )
                        ],
                      ),
                      Divider(
                        color: Color(0xFF999999),
                        thickness: 1,
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Notification Settings",
                              style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter")),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Color(0xFF999999),
                          )
                        ],
                      ),
                      Divider(
                        color: Color(0xFF999999),
                        thickness: 1,
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("General",
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Inter")),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Privacy Policy",
                              style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter")),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Color(0xFF999999),
                          )
                        ],
                      ),
                      Divider(
                        color: Color(0xFF999999),
                        thickness: 1,
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Terms of Use",
                              style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter")),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Color(0xFF999999),
                          )
                        ],
                      ),
                      Divider(
                        color: Color(0xFF999999),
                        thickness: 1,
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Customer Service Charter",
                              style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter")),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Color(0xFF999999),
                          )
                        ],
                      ),
                      Divider(
                        color: Color(0xFF999999),
                        thickness: 1,
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("App Version",
                              style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter")),
                          Spacer(),
                          Text("1.17.0.0",
                              style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter"))
                        ],
                      ),
                      Divider(
                        color: Color(0xFF999999),
                        thickness: 1,
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Rate This App",
                              style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter")),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Color(0xFF999999),
                          )
                        ],
                      ),
                      Divider(
                        color: Color(0xFF999999),
                        thickness: 1,
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Share This App",
                              style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter")),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: Color(0xFF999999),
                          )
                        ],
                      ),
                      Divider(
                        color: Color(0xFF999999),
                        thickness: 1,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
