import 'package:flutter/material.dart';
import 'package:klinik_app/ui/poli_form.dart';
import '../model/poli.dart';
import 'poli_detail.dart';
import 'poli_item.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({ Key? key }) : super(key: key);

  @override
  _PoliPageState createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Poli"),
        actions: [GestureDetector(
          child: const Icon(Icons.add),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PoliForm())),
        )],
      ),
      body: ListView(
        children: [
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT"))
        ],
      ),
    );
  }
}