import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:tune_app/pages/OtpPage.dart';
import 'package:tune_app/screens/home_screens';
import 'package:tune_app/utils/showSnackbar.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Auth {
  final FirebaseAuth _auth;
  Auth(this._auth);

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();

  User get user => _auth.currentUser!;

  // EMAIL LOGIN
  Future<bool> signUpWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      Map<String, dynamic> userData = {
        'createdAt': DateTime.now(),
      };

      await writeToFirestore(
        collectionName: 'userInfo',
        documentId: email,
        data: userData,
      );

      await sendEmailVerification(context);
      return true;
    } on FirebaseAuthException catch (e) {
      // if you want to display your own custom error message
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        return false;
      } else if (e.code == 'email-already-in-use') {
        return false;
        print('The account already exists for that email.');
      }
      showSnackBar(
          context, e.message!); // Displaying the usual firebase error message
    }
    return true;
  }

  Future<void> writeToFirestore({
    required String collectionName,
    required String documentId,
    required Map<String, dynamic> data,
  }) async {
    try {
      await _firestore.collection(collectionName).doc(documentId).set(data);
      print('Data written to Firestore successfully');
    } catch (e) {
      print('Error writing to Firestore: $e');
    }
  }

  // EMAIL LOGIN
  Future<void> loginWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (!user.emailVerified) {
        await sendEmailVerification(context);
        // restrict access to certain things using provider
        // transition to another page instead of home screen
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!); // Displaying the error message
    }
  }

  // EMAIL VERIFICATION
  Future<void> sendEmailVerification(BuildContext context) async {
    try {
      _auth.currentUser!.sendEmailVerification();
      showSnackBar(context, 'Email verification sent!');
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!); // Display error message
    }
  }

  // GOOGLE SIGN IN
  Future<void> signInWithGoogle(BuildContext context) async {
    try {
      if (kIsWeb) {
        GoogleAuthProvider googleProvider = GoogleAuthProvider();

        googleProvider
            .addScope('https://www.googleapis.com/auth/contacts.readonly');

        await _auth.signInWithPopup(googleProvider);
      } else {
        final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

        final GoogleSignInAuthentication? googleAuth =
            await googleUser?.authentication;

        if (googleAuth?.accessToken != null && googleAuth?.idToken != null) {
          // Create a new credential
          final credential = GoogleAuthProvider.credential(
            accessToken: googleAuth?.accessToken,
            idToken: googleAuth?.idToken,
          );
          UserCredential userCredential =
              await _auth.signInWithCredential(credential);

          // if you want to do specific task like storing information in firestore
          // only for new users using google sign in (since there are no two options
          // for google sign in and google sign up, only one as of now),
          // do the following:

          // if (userCredential.user != null) {
          //   if (userCredential.additionalUserInfo!.isNewUser) {}
          // }
        }
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!); // Displaying the error message
    }
  }

  // ANONYMOUS SIGN IN
  Future<void> signInAnonymously(BuildContext context) async {
    try {
      await _auth.signInAnonymously();
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!); // Displaying the error message
    }
  }

  // FACEBOOK SIGN IN
  Future<void> signInWithFacebook(BuildContext context) async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();

      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      await _auth.signInWithCredential(facebookAuthCredential);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!); // Displaying the error message
    }
  }

  // PHONE SIGN IN
  Future<void> phoneSignIn(
    BuildContext context,
    String phoneNumber,
  ) async {
    TextEditingController codeController = TextEditingController();
    if (kIsWeb) {
      // Works only on web
      ConfirmationResult result =
          await _auth.signInWithPhoneNumber(phoneNumber);

      // Display OTP page
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OtpPage(
              codeController: codeController,
              onPressed: () async {
                PhoneAuthCredential credential = PhoneAuthProvider.credential(
                  verificationId: result.verificationId,
                  smsCode: codeController.text.trim(),
                );

                await _auth.signInWithCredential(credential);
                Navigator.of(context).pop(); // Remove the dialog box
              },
              onPs: () async {
                Navigator.pushNamed(context, HomeScreen.routeName);
              },
              mobileNumber: phoneNumber),
        ),
      );
    } else {
      // For Android, iOS
      await _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (e) {
          showSnackBar(context, e.message!);
        },
        codeSent: ((String verificationId, int? resendToken) async {
          // Initialize verification code variable

          // Listen for incoming SMS verification cod

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OtpPage(
                  codeController: codeController,
                  onPressed: () async {
                    PhoneAuthCredential credential =
                        PhoneAuthProvider.credential(
                      verificationId: verificationId,
                      smsCode: codeController.text.trim(),
                    );

                    await _auth.signInWithCredential(credential);
                    Navigator.of(context).pop(); // Remove the dialog box
                  },
                  onPs: () async {
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                  mobileNumber: phoneNumber),
            ),
          );
        }),
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-resolution timed out...
        },
      );
    }
  }

  // SIGN OUT
  Future<void> signOut(BuildContext context) async {
    try {
      await _auth.signOut();
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!); // Displaying the error message
    }
  }

  // DELETE ACCOUNT
  Future<void> deleteAccount(BuildContext context) async {
    try {
      await _auth.currentUser!.delete();
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!); // Displaying the error message
      // if an error of requires-recent-login is thrown, make sure to log
      // in user again and then delete account.
    }
  }
}
