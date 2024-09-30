import 'package:flutter/material.dart';

class TimeAvailPage extends StatelessWidget {
  const TimeAvailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 17, 17, 18),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft,
                colors: [
                  Color.fromARGB(255, 100, 206, 255),
                  Color.fromARGB(255, 16, 133, 229)
                ],
              ),
            ),
          ),
          title: const Text(
            'Time Availability',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
