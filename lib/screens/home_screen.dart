import 'package:flutter/material.dart';
import 'package:tune_app/screens/Reward/reward_screen.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreenStates();
}

class _HomeScreenStates extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final halfScreenwidth = screenWidth / 2;
    return SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.fromLTRB(25, 22, 25, 22),
            width: double.infinity,
            child: Column(children: [
              Container(
                height: 104,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Welcome John Doe!",
                              style: TextStyle(
                                  color: Color(0xFFFF0000),
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter")),
                          Text("What can we do for you?",
                              style: TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter"))
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon:
                              Icon(Icons.notifications_none_rounded, size: 24))
                    ]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text("Our Services",
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Inter")),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Container(
                                  height: 90,
                                  width: 70,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 10),
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
                                              Icons.price_change_rounded,
                                              color: Color(0xFFFF0000),
                                              size: 30,
                                            )),
                                      ),
                                      Expanded(
                                          child: Text(
                                        "Get Quote",
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
                              onTap: () {},
                              child: Container(
                                  height: 90,
                                  width: 70,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 10),
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
                                              Icons.insert_drive_file_rounded,
                                              color: Color(0xFFFF0000),
                                              size: 30,
                                            )),
                                      ),
                                      Expanded(
                                          child: Text(
                                        "Claims",
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
                              onTap: () {},
                              child: Container(
                                  height: 90,
                                  width: 70,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 10),
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
                                              Icons.newspaper_rounded,
                                              color: Color(0xFFFF0000),
                                              size: 30,
                                            )),
                                      ),
                                      Expanded(
                                          child: Text(
                                        "Articles",
                                        style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Inter"),
                                        textAlign: TextAlign.center,
                                      ))
                                    ],
                                  ))),
                        ],
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RewardScreen()),
                                );
                              },
                              child: Container(
                                  height: 90,
                                  width: 70,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 10),
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
                                              Icons.price_change_rounded,
                                              color: Color(0xFFFF0000),
                                              size: 30,
                                            )),
                                      ),
                                      Expanded(
                                          child: Text(
                                        "Rewards",
                                        style: TextStyle(
                                            color: Color(0xFF000000),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: "Inter"),
                                        textAlign: TextAlign.center,
                                      ))
                                    ],
                                  ))),
                          SizedBox(
                            width: 30,
                          ),
                          InkWell(
                              onTap: () {},
                              child: Container(
                                  height: 90,
                                  width: 70,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            EdgeInsets.fromLTRB(0, 0, 0, 10),
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
                                              Icons.price_change_rounded,
                                              color: Color(0xFFFF0000),
                                              size: 30,
                                            )),
                                      ),
                                      Expanded(
                                          child: Text(
                                        "Pump",
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
                      ))
                ],
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                    child: Text("Recommendations",
                        style: TextStyle(
                            color: Color(0xFF000000),
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Inter")),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: currentList.length,
                      itemBuilder: (BuildContext context, int index) {
                        final currentItem = currentList[index];
                        return Container(
                          width: 200,
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    currentItem['Image URL'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                currentItem['Title'],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                currentItem['Caption'],
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ])));
  }
}

List<Map<String, dynamic>> currentList = [
  {
    'Title': 'Comprehensive Bike Insurance',
    'Caption':
        'Protect your valuable bike with our comprehensive insurance plan designed for your peace of mind.',
    'Image URL': 'https://www.insuringall.com/img/bike-in.png',
  },
  {
    'Title': 'Car Insurance for Peace of Mind',
    'Caption':
        'Drive confidently knowing that your car is protected by our comprehensive insurance coverage.',
    'Image URL': 'https://bjak.my/blog/wp-content/uploads/2021/10/A1.jpeg',
  },
  {
    'Title': 'Life Insurance for Your Loved Ones',
    'Caption':
        'Secure the financial future of your loved ones with our reliable life insurance policies.',
    'Image URL':
        'https://media.geeksforgeeks.org/wp-content/cdn-uploads/20221223125246/LIFE-INSURANCE-2.png',
  },
];
