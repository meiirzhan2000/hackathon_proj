import 'package:flutter/services.dart';
import 'package:tune_app/pages/login_email_password_screen.dart';
import 'package:tune_app/pages/signup_email_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/login-email';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 390,
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 87,
                top: 99,
                child: Image.network(
                  'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FEoAH8NFP1tRTLn79JND3%2Fe18e48348c12e1b933452b04d324b577e8bc48c9?alt=media&token=1e685e4e-8260-4f4e-9923-c3b1f31e7a14',
                  width: 217,
                  height: 224,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 24,
                top: 407,
                child: GestureDetector(
                  onTap: () {
                    // Handle Register button click
                    Navigator.pushNamed(context, EmailPasswordSignup.routeName);
                  },
                  child: Container(
                    width: 343,
                    height: 66,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFFF0000),
                          Color.fromARGB(255, 198, 47, 47)
                        ],
                        stops: [0.95, 1],
                      ),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 132,
                          top: 20,
                          child: Text(
                            'Register',
                            style: GoogleFonts.getFont(
                              'Inter',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 482,
                child: GestureDetector(
                  onTap: () {
                    // Handle Log In button click
                    Navigator.pushNamed(context, EmailPasswordLogin.routeName);
                  },
                  child: Container(
                    width: 343,
                    height: 66,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF0000),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 142,
                          top: 20,
                          child: Text(
                            'Log In',
                            style: GoogleFonts.getFont(
                              'Inter',
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -3,
                top: 557,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, EmailPasswordLogin.routeName);
                  },
                  child: Container(
                    width: 393,
                    height: 59,
                    color: Colors.transparent,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                          left: 50,
                          top: 19,
                          child: RichText(
                            textAlign: TextAlign.left,
                            text: TextSpan(
                              style: GoogleFonts.getFont(
                                'Inter',
                                color: const Color(0xFF999999),
                                fontSize: 16,
                              ),
                              children: const [
                                TextSpan(text: 'Like to skip for now? '),
                                TextSpan(
                                  text: ' Enter As a Guest',
                                  style: TextStyle(
                                    color: Color(0xFFFF0000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
