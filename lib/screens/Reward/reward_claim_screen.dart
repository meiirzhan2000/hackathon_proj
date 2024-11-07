import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../../auth.dart';

class RewardClaimScreen extends StatefulWidget {
  final int pageNumber;

  const RewardClaimScreen({super.key, required this.pageNumber});

  @override
  State<RewardClaimScreen> createState() => _RewardClaimScreenState();
}

class _RewardClaimScreenState extends State<RewardClaimScreen>
    with SingleTickerProviderStateMixin {
  final TextEditingController searchController = TextEditingController();
  late TabController _tabController;
  List<Map<String, dynamic>> pointsList = [];
  List<Map<String, dynamic>> cashbackList = [];
  List<Map<String, dynamic>> ticketList = [];
  List<Map<String, dynamic>> vouchersList = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 4);
    _tabController.index =
        widget.pageNumber; // Set the initial index based on the pageNumber
    retrievePointsData();
    retrieveTicketData();
    retrievecCashbackData();
    retrieveVouchersData();
  }

  Future<List<Map<String, dynamic>>> retrievePointsCollection() async {
    List<Map<String, dynamic>> pointsList = [];

    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('points').get();

    for (var doc in snapshot.docs) {
      Map<String, dynamic> data = (doc.data() as Map<String, dynamic>);
      data['id'] = doc.id; // Add the document ID to the data
      pointsList.add(data);
    }

    return pointsList;
  }

  Future<List<Map<String, dynamic>>> retrieveCashbackCollection() async {
    List<Map<String, dynamic>> pointsList = [];

    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('cashback').get();

    for (var doc in snapshot.docs) {
      Map<String, dynamic> data = (doc.data() as Map<String, dynamic>);
      data['id'] = doc.id; // Add the document ID to the data
      pointsList.add(data);
    }

    return pointsList;
  }

  Future<List<Map<String, dynamic>>> retrieveticketCollection() async {
    List<Map<String, dynamic>> pointsList = [];

    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('ticket').get();

    for (var doc in snapshot.docs) {
      Map<String, dynamic> data = (doc.data() as Map<String, dynamic>);
      data['id'] = doc.id; // Add the document ID to the data
      pointsList.add(data);
    }

    return pointsList;
  }

  Future<List<Map<String, dynamic>>> retrievevouchersCollection() async {
    List<Map<String, dynamic>> pointsList = [];

    QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('vouchers').get();

    for (var doc in snapshot.docs) {
      Map<String, dynamic> data = (doc.data() as Map<String, dynamic>);
      data['id'] = doc.id; // Add the document ID to the data
      pointsList.add(data);
    }

    return pointsList;
  }

  Future<void> retrievePointsData() async {
    List<Map<String, dynamic>> data = await retrievePointsCollection();
    setState(() {
      pointsList = data;
    });
  }

  Future<void> retrieveTicketData() async {
    List<Map<String, dynamic>> data = await retrievevouchersCollection();
    setState(() {
      cashbackList = data;
    });
  }

  Future<void> retrievecCashbackData() async {
    List<Map<String, dynamic>> data = await retrievevouchersCollection();
    setState(() {
      ticketList = data;
    });
  }

  Future<void> retrieveVouchersData() async {
    List<Map<String, dynamic>> data = await retrieveCashbackCollection();
    setState(() {
      vouchersList = data;
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
              backgroundColor: Color(0xFFFFFFFF),
              body: NestedScrollView(
                  headerSliverBuilder:
                      (BuildContext context, bool innerBoxIsScrolled) {
                    return <Widget>[
                      SliverAppBar(
                        pinned: true,
                        floating: true,
                        expandedHeight: 130,
                        backgroundColor: Color(0xFFFFFFFF),
                        flexibleSpace: FlexibleSpaceBar(
                          collapseMode: CollapseMode.pin,
                          background: Container(
                              alignment: Alignment.topCenter,
                              padding:
                                  EdgeInsets.only(top: 22, left: 25, right: 25),
                              child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    IconButton(
                                      icon: Icon(
                                        Icons.arrow_back_rounded,
                                        color: Color(0xFFFF0000),
                                      ),
                                      onPressed: () {},
                                    ),
                                    SizedBox(
                                      width: 220,
                                      height: 30,
                                      child: TextField(
                                        controller: searchController,
                                        textAlignVertical:
                                            TextAlignVertical.bottom,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: "inter",
                                            color: Color(0xFF000000)),
                                        decoration: InputDecoration(
                                            prefixIcon:
                                                Icon(Icons.search_rounded),
                                            prefixIconColor: Color(0xFFFF0000),
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            hintText:
                                                "What are you looking for?",
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50)),
                                                borderSide: BorderSide(
                                                    color: Color(0xFFFF0000)))),
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      icon: Icon(
                                        Icons.manage_search_rounded,
                                        color: Color(0xFFFF0000),
                                      ),
                                      onPressed: () {},
                                    )
                                  ])),
                        ),
                        bottom: TabBar(
                          controller: _tabController,
                          tabs: [
                            Tab(text: "Voucher"),
                            Tab(text: "Ticket"),
                            Tab(text: "Cashback"),
                            Tab(text: "Exclusive Prize")
                          ],
                          indicatorColor: Color(0xFFFF0000),
                          labelColor: Color(0xFFFF0000),
                          unselectedLabelColor: Color(0xFF000000),
                          isScrollable: true,
                        ),
                      )
                    ];
                  },
                  body: TabBarView(controller: _tabController, children: [
                    ListView.builder(
                        itemCount: pointsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          String image = vouchersList[index]['image'];
                          int points = vouchersList[index]['points'];
                          String id = vouchersList[index]['id'];

                          return Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.only(
                                  left: 25, right: 25, bottom: 30),
                              child: InkWell(
                                  onTap: () {},
                                  child: Container(
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
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 140,
                                          width: 140,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10)),
                                            child: AspectRatio(
                                              aspectRatio: 1.3,
                                              child: Image(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(image)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          width: 220,
                                          height: 140,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  id,
                                                  style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Inter"),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "$points Points",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFFF0000),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontFamily: "Inter"),
                                                  ),
                                                  Spacer(),
                                                  Icon(
                                                    Icons.arrow_forward_rounded,
                                                    color: Color(0xFFFF0000),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )));
                        }),
                    ListView.builder(
                        itemCount: pointsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          String image = ticketList[index]['image'];
                          int points = ticketList[index]['points'];
                          String id = ticketList[index]['id'];

                          return Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.only(
                                  left: 25, right: 25, bottom: 30),
                              child: InkWell(
                                  onTap: () {},
                                  child: Container(
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
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 140,
                                          width: 140,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10)),
                                            child: AspectRatio(
                                              aspectRatio: 1.3,
                                              child: Image(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(image)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          width: 220,
                                          height: 140,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  id,
                                                  style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Inter"),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "$points Points",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFFF0000),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontFamily: "Inter"),
                                                  ),
                                                  Spacer(),
                                                  Icon(
                                                    Icons.arrow_forward_rounded,
                                                    color: Color(0xFFFF0000),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )));
                        }),
                    ListView.builder(
                        itemCount: pointsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          String image = cashbackList[index]['image'];
                          int points = cashbackList[index]['points'];
                          String id = cashbackList[index]['id'];

                          return Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.only(
                                  left: 25, right: 25, bottom: 30),
                              child: InkWell(
                                  onTap: () {},
                                  child: Container(
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
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 140,
                                          width: 140,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10)),
                                            child: AspectRatio(
                                              aspectRatio: 1.3,
                                              child: Image(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(image)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          width: 220,
                                          height: 140,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  id,
                                                  style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Inter"),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "$points Points",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFFF0000),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontFamily: "Inter"),
                                                  ),
                                                  Spacer(),
                                                  Icon(
                                                    Icons.arrow_forward_rounded,
                                                    color: Color(0xFFFF0000),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )));
                        }),
                    ListView.builder(
                        itemCount: pointsList.length,
                        itemBuilder: (BuildContext context, int index) {
                          String image = pointsList[index]['image'];
                          int points = pointsList[index]['points'];
                          String id = pointsList[index]['id'];

                          return Container(
                              alignment: Alignment.topRight,
                              padding: EdgeInsets.only(
                                  left: 25, right: 25, bottom: 30),
                              child: InkWell(
                                  onTap: () {},
                                  child: Container(
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
                                            ]),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 140,
                                          width: 140,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                bottomLeft:
                                                    Radius.circular(10)),
                                            child: AspectRatio(
                                              aspectRatio: 1.3,
                                              child: Image(
                                                  fit: BoxFit.cover,
                                                  image: NetworkImage(image)),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          width: 220,
                                          height: 140,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  id,
                                                  style: TextStyle(
                                                      color: Color(0xFF000000),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontFamily: "Inter"),
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "$points Points",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFFFF0000),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontFamily: "Inter"),
                                                  ),
                                                  Spacer(),
                                                  Icon(
                                                    Icons.arrow_forward_rounded,
                                                    color: Color(0xFFFF0000),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )));
                        })
                  ]))),
        ));
  }
}
