import 'package:tune_app/auth.dart';
import 'package:tune_app/pages/phone_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../utils/screenItems.dart';
import '../utils/utils.dart';

class EmailPasswordSignup extends StatefulWidget {
  static String routeName = '/signup-email-password';

  const EmailPasswordSignup({super.key});

  @override
  _EmailPasswordSignupState createState() => _EmailPasswordSignupState();
}

class _EmailPasswordSignupState extends State<EmailPasswordSignup> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUpUser() async {
    context.read<Auth>().signUpWithEmail(
          email: emailController.text,
          password: passwordController.text,
          context: context,
        );
  }

  Widget buttonPrimary(
      double baseWidth, double fem, double ffem, String buttonText) {
    return TextButton(
      // frame8z7T (7:90)
      onPressed: () {
        signUpUser();
        Navigator.pushNamed(context, PhoneScreen.routeName);
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFFFF0000),
        centerTitle: false,
        titleSpacing: 0,
        titleTextStyle: const TextStyle(
          color: Color(0xFFFF0000),
          fontSize: 18,
          fontFamily: 'Roboto',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: titleText(baseWidth, fem, ffem, 'Create account!',
                        'Register to get started.'),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                  textBox(
                      baseWidth, fem, ffem, 'Email Address', emailController),
                  const SizedBox(height: 20),
                  textBox(baseWidth, fem, ffem, 'Password', passwordController),
                  Container(
                    // forgotpasswordh8M (7:70)
                    margin: const EdgeInsets.only(left: 23, top: 3, bottom: 3),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      child: Text(
                        'Forgot Password?',
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xffff0000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 15),
                      child: buttonPrimary(baseWidth, fem, ffem, 'Register')),
                  googleAndFacebook(baseWidth, fem, ffem)
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 5 * fem, 0 * fem),
            padding:
                EdgeInsets.fromLTRB(28.5 * fem, 10 * fem, 28.5 * fem, 10 * fem),
            width: double.infinity,
            height: 72 * fem,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10 * fem),
            ),
            child: Center(
              child: SizedBox(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: 286 * fem,
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.625 * ffem / fem,
                          color: Color(0xffff0000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Already have an account? ',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff999999),
                            ),
                          ),
                          TextSpan(
                            text: ' ',
                          ),
                          TextSpan(
                            text: 'Log in',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2125 * ffem / fem,
                              decoration: TextDecoration.underline,
                              color: Color(0xffff0000),
                              decorationColor: Color(0xffff0000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
