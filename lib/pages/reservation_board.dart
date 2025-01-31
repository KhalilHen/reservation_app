import 'package:flutter/material.dart';

class ReservationPanel extends StatefulWidget {
  const ReservationPanel({Key? key}) : super(key: key);

  @override
  _ReservationPanelState createState() => _ReservationPanelState();
}

class _ReservationPanelState extends State<ReservationPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservation Panel'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
          child: const Text('Reservation Panel'),
        ),
      ),
    );
  }

}
