import 'package:flutter/material.dart';
import 'package:travel_app/Screens/Sign_In_Screen.dart';
import 'package:travel_app/Screens/Home_Screen.dart';
import 'package:travel_app/Screens/Booking_Screen.dart';
import 'package:travel_app/Models/Buttons_Data.dart';

void main() => runApp(MaterialApp(
  routes: {
    '/': (context) => const Sign_In_Page(),
    '/home-screen': (context) => Home_Page(),
    '/booking-screen-0': (context) => Booking_Screen(data: Homepage_Model.booking_screen_data[0],),
    '/booking-screen-1': (context) => Booking_Screen(data: Homepage_Model.booking_screen_data[1],),
  },
));
