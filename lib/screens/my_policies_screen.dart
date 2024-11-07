import 'package:flutter/material.dart';

class MyPoliciesScreen extends StatefulWidget {
  const MyPoliciesScreen({super.key});

  @override
  State<MyPoliciesScreen> createState() => _MyPoliciesScreenState();
}

class _MyPoliciesScreenState extends State<MyPoliciesScreen> {
  List<bool> isSelected = <bool>[true, false];

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> selectedList =
        isSelected[0] ? currentList : pastList;
    return CustomScrollView(
      slivers: [
        SliverAppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            expandedHeight: 260,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Container(
                  padding: EdgeInsets.only(top: 22, left: 25, right: 25),
                  child: Column(children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("My Policies",
                                  style: TextStyle(
                                      color: Color(0xFFFF0000),
                                      fontSize: 26,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Inter")),
                              Text("All your policies at a glance",
                                  style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Inter"))
                            ],
                          )
                        ]),
                    SizedBox(height: 20),
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
                          width: double.infinity,
                          child: Column(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Text("Want more protection?",
                                      style: TextStyle(
                                          color: Color(0xFF000000),
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Inter"))),
                              Text("Secure more protection with",
                                  style: TextStyle(
                                      color: Color(0xFF999999),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Inter")),
                              Text("our selection of products.",
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: Color(0xFFFF0000),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Inter"))
                            ],
                          ),
                        ))
                  ])),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(10),
              child: Container(
                padding: EdgeInsets.only(bottom: 0),
                color: Color(0xFFFFFFFF),
                child: ToggleButtons(
                  children: <Widget>[
                    Text("Active",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter")),
                    Text("Past",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter"))
                  ],
                  isSelected: isSelected,
                  selectedColor: Color(0xFFFFFFFF),
                  color: Color(0xFF999999),
                  borderColor: Color(0xFF999999),
                  fillColor: Colors.red,
                  onPressed: (int index) {
                    setState(() {
                      for (int i = 0; i < isSelected.length; i++) {
                        isSelected[i] = i == index;
                      }
                    });
                  },
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  constraints: BoxConstraints(minHeight: 40, minWidth: 150),
                ),
              ),
            ),
            pinned: true),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            final Map<String, dynamic> item = selectedList[index];
            final List<Color> gradientColors = isSelected[0]
                ? [Color(0xFFFFAF52), Color(0xFFF17B26)]
                : [
                    Color.fromARGB(255, 172, 171, 171),
                    Color.fromARGB(255, 192, 191, 191)
                  ];
            return Container(
              padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
              child: Container(
                height: 240,
                padding: EdgeInsets.all(10),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment(0.627, 0.821),
                    end: Alignment(-0.429, -0.663),
                    colors: gradientColors,
                    stops: <double>[0, 1],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x14000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("TUNE PROTECT",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Text(
                              isSelected[0]
                                  ? currentList[index]['Transport']
                                  : pastList[index]['Transport'],
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 32,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter")),
                        ),
                        Text("Easy",
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 32,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Inter"))
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Name",
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Inter")),
                        Spacer(),
                        Text("Expiry Date",
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.w200,
                                fontFamily: "Inter"))
                      ],
                    ),
                    Row(
                      children: [
                        Text("John Doe",
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Inter")),
                        Spacer(),
                        Text(
                            isSelected[0]
                                ? currentList[index]['Expiry Date']
                                : pastList[index]['Expiry Date'],
                            style: TextStyle(
                                color: Color(0xFFFFFFFF),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Inter"))
                      ],
                    ),
                    SizedBox(height: 20),
                    Text("Certificate No.",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                            fontFamily: "Inter")),
                    Text(
                        isSelected[0]
                            ? currentList[index]['Certificate No']
                            : pastList[index]['Certificate No'],
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Inter"))
                  ],
                ),
              ),
            );
          },
          childCount: isSelected[0] ? currentList.length : pastList.length,
        ))
      ],
    );
  }
}

List<Map<String, dynamic>> currentList = [
  {
    'Certificate No': '1234-XXXX-XXXX-XXXX-XXXX',
    'Expiry Date': '2026/2/28',
    'Transport': 'Bike',
  },
  {
    'Certificate No': '1932-XXXX-XXXX-XXXX-XXXX',
    'Expiry Date': '2026/7/11',
    'Transport': 'Car',
  },
  {
    'Certificate No': '9324-XXXX-XXXX-XXXX-XXXX',
    'Expiry Date': '2026/6/15',
    'Transport': 'Life',
  },
  {
    'Certificate No': '5345-XXXX-XXXX-XXXX-XXXX',
    'Expiry Date': '2026/9/19',
    'Transport': 'Family',
  },
];

List<Map<String, dynamic>> pastList = [
  {
    'Certificate No': '6753-XXXX-XXXX-XXXX-XXXX',
    'Expiry Date': '2022/9/19',
    'Transport': 'Bike',
  },
  {
    'Certificate No': '8900-XXXX-XXXX-XXXX-XXXX',
    'Expiry Date': '2021/5/19',
    'Transport': 'Car',
  },
  {
    'Certificate No': '1777-XXXX-XXXX-XXXX-XXXX',
    'Expiry Date': '2021/3/11',
    'Transport': 'Life',
  },
  {
    'Certificate No': '777X-XXXX-XXXX-XXXX-XXXX',
    'Expiry Date': '2020/5/19',
    'Transport': 'Family',
  },
];
