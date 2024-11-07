import 'package:flutter/material.dart';
import 'package:tune_app/utils/utils.dart';

Widget titleText(
    double baseWidth, double fem, double ffem, String title, String subTitel) {
  return Container(
    // frame6y21 (7:54)

    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
    width: double.infinity,
    height: 60 * fem,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10 * fem),
    ),
    child: Stack(
      children: [
        Positioned(
          // welcomebackVFF (7:55)
          left: 0 * fem,
          top: 0 * fem,
          child: Align(
            child: SizedBox(
              width: 240 * fem,
              height: 32 * fem,
              child: Text(
                title,
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 26 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xffff0000),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          // enteryourcredentialstocontinue (7:56)
          left: 0 * fem,
          top: 31 * fem,
          child: Align(
            child: SizedBox(
              width: 297 * fem,
              height: 22 * fem,
              child: Text(
                subTitel,
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 18 * ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff999999),
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget textBox(
  double baseWidth,
  double fem,
  double ffem,
  String hintText,
  TextEditingController controller,
) {
  return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10 * fem),
        border: Border.all(color: Color(0xffdddddd)),
        color: Color(0xfff7f7f7),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding:
              EdgeInsets.fromLTRB(22 * fem, 19 * fem, 21 * fem, 18.5 * fem),
          hintText: hintText,
        ),
      ));
}

Widget googleAndFacebook(
  double baseWidth,
  double fem,
  double ffem,
) {
  return Center(
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // frame5nZ7 (7:37)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
            width: double.infinity,
            height: 36 * fem,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10 * fem),
            ),
            child: Center(
              child: Text(
                'Or connect via',
                style: SafeGoogleFont(
                  'Inter',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff999999),
                ),
              ),
            ),
          ),
          Container(
            // frame2saZ (7:39)
            margin: EdgeInsets.fromLTRB(5 * fem, 0 * fem, 5 * fem, 0 * fem),
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // frame11Ay (7:40)
                  margin:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 19 * fem, 0 * fem),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 162 * fem,
                      height: 50 * fem,
                      child: Image.asset(
                        'assets/page-1/images/frame-1-HTw.png',
                        width: 162 * fem,
                        height: 50 * fem,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  // frame6gH7 (7:46)
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: 162 * fem,
                    height: 50 * fem,
                    child: Image.asset(
                      'assets/page-1/images/frame-6.png',
                      width: 162 * fem,
                      height: 50 * fem,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
