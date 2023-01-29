import 'package:doctor_appoint/components/doctor_card.dart';
import 'package:doctor_appoint/reminder/relux.dart';
import 'package:doctor_appoint/reminder/reminder_page_two.dart';
import 'package:doctor_appoint/screens/auth_page.dart';
import 'package:doctor_appoint/screens/booking_page.dart';
import 'package:doctor_appoint/screens/doctor_details.dart';
import 'package:doctor_appoint/screens/success_booked.dart';
import 'package:doctor_appoint/utils/config.dart';
import 'package:doctor_appoint/welcome_page.dart';
import 'package:flutter/material.dart';

import 'main_layout.dart';
import 'onboarding_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static final navigatorKey=GlobalKey<NavigatorState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.outlinedBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outlinedBorder,
          floatingLabelStyle: TextStyle(color: Config.primaryColor),
          prefixIconColor: Colors.black38,
        ),
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed
        )
      ),
      // initialRoute: '/',
      // routes: {
      //   '/':(context)=>AuthPage(),
      //   'main':(context)=>MainLayOut(),
      //   'doc_details':(context)=>DoctorDetails(),
      //   'booking_page':(context)=>BookingPage(),
      //   "success_booking":(context)=>AppointmentBooked()
      // },
      home: Scaffold(
        body:YouTubePlayerScreen(),
      ),

    );
  }
}

