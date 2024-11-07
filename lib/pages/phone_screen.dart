import 'package:tune_app/auth.dart';
import 'package:tune_app/widgets/custom_button.dart';
import 'package:tune_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/utils.dart';

class PhoneScreen extends StatefulWidget {
  static String routeName = '/phone';

  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    phoneController.dispose();
  }

  Widget buttonPrimary(
      double baseWidth, double fem, double ffem, String buttonText) {
    return TextButton(
      // frame8z7T (7:90)
      onPressed: () {
        print('+60' + phoneController.text);
        context
            .read<Auth>()
            .phoneSignIn(context, ('+60' + phoneController.text));
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      child: Container(
        width: double.infinity,
        height: 58 * fem,
        decoration: BoxDecoration(
          color: Color(0xffff0000),
          borderRadius: BorderRadius.circular(10 * fem),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: SafeGoogleFont(
              'Inter',
              fontSize: 20 * ffem,
              fontWeight: FontWeight.w400,
              height: 1.2125 * ffem / fem,
              color: Color(0xffffffff),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 139, 136, 136),
        appBar: AppBar(
          elevation: 0,
          shadowColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 192, 182, 182),
          foregroundColor: const Color(0xFFFF0000),
          centerTitle: false,
          titleSpacing: 0,
          titleTextStyle: const TextStyle(
            color: Color(0xFFFF0000),
            fontSize: 18,
            fontFamily: 'Roboto',
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, top: 20.0, right: 16.0),
                    child: Text(
                      "Enter your phone number",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Image.asset(
                      'assets/page-1/images/otp-icon.png',
                      width: 120.0,
                      height: 120.0,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Container(),
                        flex: 1,
                      ),
                      Flexible(
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          autofocus: false,
                          enabled: false,
                          initialValue: "+60",
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        flex: 3,
                      ),
                      Flexible(
                        child: Container(),
                        flex: 1,
                      ),
                      Flexible(
                        child: TextFormField(
                          controller: phoneController,
                          textAlign: TextAlign.start,
                          autofocus: false,
                          enabled: true,
                          keyboardType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          style: TextStyle(fontSize: 20.0, color: Colors.black),
                        ),
                        flex: 9,
                      ),
                      Flexible(
                        child: Container(),
                        flex: 1,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
                    child: Container(
                        margin: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 15),
                        child: buttonPrimary(baseWidth, fem, ffem, 'Confirm')),
                  )
                ])
          ],
        ));
    // TODO: implement build
  }
}
