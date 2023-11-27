import 'package:flutter/material.dart';
// import 'P5/ui/poli_page.dart';
// import 'P6/ui/poli_page.dart';
// import 'P7/ui/poli_page.dart';
import 'P9/ui/poli_page.dart';
import 'P6T/pegawai_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Klinik APP",
      home: PoliPage(),
      // home: PegawaiPage(),
    );
  }
}
