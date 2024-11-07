import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';
import 'package:tune_app/auth.dart';

import '../widgets/custom_button.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  Widget _title() {
    return const Text('Firebase Auth');
  }

  @override
  Widget build(BuildContext context) {
    final user = context.read<Auth>().user;
    int currentIndex = 0;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: _title(),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!user.isAnonymous && user.phoneNumber == null)
                Text(user.email!),
              if (!user.emailVerified && !user.isAnonymous)
                CustomButton(
                  onTap: () {
                    context.read<Auth>().sendEmailVerification(context);
                  },
                  text: 'Verify Email',
                ),
              CustomButton(
                onTap: () {
                  context.read<Auth>().signOut(context);
                },
                text: 'Sign Out',
              ),
            ],
          )),
    );
  }
}
