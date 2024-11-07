import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tune_app/auth.dart';
import 'package:tune_app/pages/home_page.dart';
import 'package:tune_app/pages/login_screen.dart';
import 'package:tune_app/screens/home_screen.dart';
import 'package:tune_app/screens/home_screens';

class WidgetTree extends StatefulWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTree();
}

class _WidgetTree extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Auth>(
          create: (_) => Auth(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) => context.read<Auth>().authState,
          initialData: null,
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Firebase Auth Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AuthWrapper(),
        routes: {
          LoginScreen.routeName: (context) => const LoginScreen(),
        },
      ),
    );
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser != null) {
      return const HomeScreen(pageNumber: 0);
    }
    return const LoginScreen();
  }
}
