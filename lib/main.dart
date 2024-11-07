import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tune_app/chatbotAi/providers/chats_provider.dart';
import 'package:tune_app/chatbotAi/providers/models_provider.dart';
import 'package:tune_app/pages/login_email_password_screen.dart';
import 'package:tune_app/pages/login_screen.dart';
import 'package:tune_app/pages/phone_screen.dart';
import 'package:tune_app/pages/signup_email_password_screen.dart';
import 'package:tune_app/screens/home_screens';
import 'auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
        ChangeNotifierProvider(
          create: (_) => ModelsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Firebase',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const AuthWrapper(),
        routes: {
          EmailPasswordSignup.routeName: (context) =>
              const EmailPasswordSignup(),
          EmailPasswordLogin.routeName: (context) => const EmailPasswordLogin(),
          PhoneScreen.routeName: (context) => const PhoneScreen(),
          HomeScreen.routeName: (context) => const HomeScreen(pageNumber: 0)
        },
      ),
    );
  }
}

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();
    if (firebaseUser != null) {
      return const HomeScreen(pageNumber: 0);
    }
    return const LoginScreen();
  }
}
