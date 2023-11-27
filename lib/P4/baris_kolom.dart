import 'package:flutter/material.dart';

class BarisKolom extends StatelessWidget {
  const BarisKolom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baris dan Kolom"),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Baris 1, Kolom 1"),
              Text("Baris 1, Kolom 2"),
              Text("Baris 1, Kolom 3"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Baris 2, Kolom 1"),
              Text("Baris 2, Kolom 2"),
              Text("Baris 2, Kolom 3"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Baris 3, Kolom 1"),
              Text("Baris 3, Kolom 2"),
              Text("Baris 3, Kolom 3"),
            ],
          ),
        ],
      ),
    );
  }
}