import 'package:flutter/material.dart';
import 'package:tune_app/screens/Reward/reward_claim_screen.dart';

import '../home_screens';

class RewardScreen extends StatefulWidget {
  const RewardScreen({super.key});

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          body: Container(
            padding: EdgeInsets.fromLTRB(25, 22, 25, 22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_rounded,
                                size: 24,
                                color: Color(0xFFFF0000),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Rewards",
                                style: TextStyle(
                                    color: Color(0xFFFF0000),
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Inter")),
                            Text("Get extra rewards",
                                style: TextStyle(
                                    color: Color(0xFF999999),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Inter"))
                          ],
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(
                            Icons.info_rounded,
                            size: 24,
                            color: Color(0xFF000000),
                          ),
                          onPressed: () {},
                        )
                      ]),
                ),
                SizedBox(height: 30),
                Container(
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
                          colors: <Color>[Color(0xFFFFFFFF), Color(0xFFFFF9F8)],
                          stops: <double>[0, 1]),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("You have",
                              style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w200,
                                  fontFamily: "Inter")),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("12000",
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 32,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Inter")),
                              SizedBox(width: 10),
                              Text("Points",
                                  style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w200,
                                      fontFamily: "Inter"))
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: Color(0xFFFF0000),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          width: 120,
                          child: Text("View History",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter")),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RewardClaimScreen(
                                      pageNumber: 0,
                                    )),
                          );
                        },
                        child: Container(
                            height: 90,
                            width: 70,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                              width: 1,
                                              color: Color(0xFFFF0000))),
                                      child: Icon(
                                        Icons.discount_rounded,
                                        color: Color(0xFFFF0000),
                                        size: 30,
                                      )),
                                ),
                                Expanded(
                                    child: Text(
                                  "Vouchers",
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Inter"),
                                  textAlign: TextAlign.center,
                                ))
                              ],
                            ))),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RewardClaimScreen(
                                      pageNumber: 1,
                                    )),
                          );
                        },
                        child: Container(
                            height: 90,
                            width: 70,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                              width: 1,
                                              color: Color(0xFFFF0000))),
                                      child: Icon(
                                        Icons.airplane_ticket_rounded,
                                        color: Color(0xFFFF0000),
                                        size: 30,
                                      )),
                                ),
                                Expanded(
                                    child: Text(
                                  "Tickets",
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Inter"),
                                  textAlign: TextAlign.center,
                                ))
                              ],
                            ))),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RewardClaimScreen(
                                      pageNumber: 2,
                                    )),
                          );
                        },
                        child: Container(
                            height: 90,
                            width: 70,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                              width: 1,
                                              color: Color(0xFFFF0000))),
                                      child: Icon(
                                        Icons.attach_money_rounded,
                                        color: Color(0xFFFF0000),
                                        size: 30,
                                      )),
                                ),
                                Expanded(
                                    child: Text(
                                  "Cashback",
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Inter"),
                                  textAlign: TextAlign.center,
                                ))
                              ],
                            ))),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RewardClaimScreen(
                                      pageNumber: 3,
                                    )),
                          );
                        },
                        child: Container(
                            height: 90,
                            width: 70,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          border: Border.all(
                                              width: 1,
                                              color: Color(0xFFFF0000))),
                                      child: Icon(
                                        Icons.card_giftcard_rounded,
                                        color: Color(0xFFFF0000),
                                        size: 30,
                                      )),
                                ),
                                Expanded(
                                    child: Text(
                                  "Prizes",
                                  style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Inter"),
                                  textAlign: TextAlign.center,
                                ))
                              ],
                            )))
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Text("Want More Points?",
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Inter")),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen(
                                          pageNumber: 0,
                                        )),
                              );
                            },
                            child: Container(
                                height: 100,
                                width: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              border: Border.all(
                                                  width: 1,
                                                  color: Color(0xFFFF0000))),
                                          child: Icon(
                                            Icons.handshake_rounded,
                                            color: Color(0xFFFF0000),
                                            size: 30,
                                          )),
                                    ),
                                    Expanded(
                                        child: Text(
                                      "Get More Policies",
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Inter"),
                                      textAlign: TextAlign.center,
                                    ))
                                  ],
                                ))),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen(
                                          pageNumber: 1,
                                        )),
                              );
                            },
                            child: Container(
                                height: 100,
                                width: 70,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                      child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(25),
                                              border: Border.all(
                                                  width: 1,
                                                  color: Color(0xFFFF0000))),
                                          child: Icon(
                                            Icons.add,
                                            color: Color(0xFFFF0000),
                                            size: 30,
                                          )),
                                    ),
                                    Expanded(
                                        child: Text(
                                      "Renew Policies",
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Inter"),
                                      textAlign: TextAlign.center,
                                    ))
                                  ],
                                )))
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
