import 'package:event_management_app/home.dart';
import 'package:event_management_app/key.dart';
import 'package:event_management_app/onbodyscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Stripe.publishableKey = publishableKey;
  Stripe.merchantIdentifier = 'merchant.flutter.stripe.test';

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(
        Theme.of(context).textTheme,
      )),
      title: 'Flutter Demo',
      home: OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
