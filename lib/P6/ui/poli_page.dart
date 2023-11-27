import 'package:flutter/material.dart';
import './poli_form.dart';
import './poli_item.dart';
// import 'poli_detail.dart';
import '../model/poli.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Poli"),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder: (context) => const PoliForm()
                )
              );
            },
          )
        ],
      ),
      body: ListView(
        children: [
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT")),
          // GestureDetector(
          //   child: const Card(
          //     child: ListTile(
          //       title: Text("Poli Anak"),
          //     ),
          //   ),
          //   onTap: () {
          //     Poli poliAnak = Poli(namaPoli: "Poli Anak");
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => PoliDetail(poli: poliAnak)
          //       ));
          //   },
          // ),
          // GestureDetector(
          //   child: const Card(
          //     child: ListTile(
          //       title: Text("Poli Kandungan"),
          //     ),
          //   ),
          //   onTap: () {
          //     Poli poliKandungan = Poli(namaPoli: "Poli Kandungan");
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => PoliDetail(poli: poliKandungan)
          //       ));
          //   },
          // ),
          // GestureDetector(
          //   child: const Card(
          //     child: ListTile(
          //       title: Text("Poli Gigi"),
          //     ),
          //   ),
          //   onTap: () {
          //     Poli poliGigi = Poli(namaPoli: "Poli Gigi");
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => PoliDetail(poli: poliGigi)
          //       ));
          //   },
          // ),
          // GestureDetector(
          //   child: const Card(
          //     child: ListTile(
          //       title: Text("Poli THT"),
          //     ),
          //   ),
          //   onTap: () {
          //     Poli poliTHT = Poli(namaPoli: "Poli THT");
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => PoliDetail(poli: poliTHT)
          //       ));
          //   },
          // ),
        ],
      ),
    );
  }
}