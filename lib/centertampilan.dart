import 'package:flutter/material.dart';

class HalamanHallo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue[900],
          width: 200.0,
          height: 100.0,
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Posisi di tengah secara horizontal
            children: [
              Icon(Icons.android_sharp, color: Colors.green[200], size: 50.0),
              const SizedBox(width: 10.0), // Jarak spasi antara ikon dan teks
              const Text(
                'Android',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
