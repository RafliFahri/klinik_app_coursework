import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({ Key? key }) : super(key: key);

  @override
  _PoliPageState createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Poli")),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Anak"),
              ),
            ),
            onTap: (){
              Poli poliAnak = new Poli(namaPoli: "Poli Anak");
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>PoliDetail(poli: poliAnak))
              );
            },
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Kandungan"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Gigi"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli THT"),
            ),
          )
        ],
      ),
    );
  }
}