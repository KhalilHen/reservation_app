import 'package:flutter/material.dart';
import 'package:reservation_app/pages/login_page.dart';
import 'package:reservation_app/pages/reservation_board.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your .
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reservation system ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  ReservationPanel(),
    );
  }
}
