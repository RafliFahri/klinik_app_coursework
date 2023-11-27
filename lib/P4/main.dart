import 'package:flutter/material.dart';
// import 'hello_world.dart';
// import 'column_widget.dart';
// import 'row_widget.dart';
import 'baris_kolom.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Klinik',
    //   home: Scaffold(
    //     appBar: AppBar(
    //       title: const Text("Belajar Flutter"),
    //     ),
    //     body: const Center(
    //       child: Text("Hello World"),
    //     ),
    //   ),
    return const MaterialApp(
      home: BarisKolom(),

      // home: ColumnWidget(),

      // home: HelloWorld(),

    );
  }
}
