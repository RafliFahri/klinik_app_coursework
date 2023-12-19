import 'package:flutter/material.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({ Key? key }) : super(key: key);

  @override
  _PasienPageState createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pasien"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Ahmad Prasetya"),
              ),
            ),
            onTap: () {
              Pasien pas = Pasien(
                id: 1, 
                nama: "Ahmad Prasetya",
                alamat: "Jl. Jalan Aja", 
                nomor_rm: "123123", 
                nomor_telepon: "088212317834",
                tanggal_lahir: "12/12/12");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PasienDetail(pasien: pas)));
            },
          ),
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Fatur Prasetya"),
              ),
            ),
            onTap: () {
              Pasien pas = Pasien(
                  id: 1,
                  nama: "Fatur Prasetya",
                  alamat: "Jl. Jalan Aja",
                  nomor_rm: "123123",
                  nomor_telepon: "088212317834",
                  tanggal_lahir: "12/12/12");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PasienDetail(pasien: pas)));
            },
          ),
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Ahmad Sofyan"),
              ),
            ),
            onTap: () {
              Pasien pas = Pasien(
                  id: 1,
                  nama: "Ahmad Sofyan",
                  alamat: "Jl. Jalan Aja",
                  nomor_rm: "123123",
                  nomor_telepon: "088212317834",
                  tanggal_lahir: "12/12/12");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PasienDetail(pasien: pas)));
            },
          ),
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Afriza Haikal"),
              ),
            ),
            onTap: () {
              Pasien pas = Pasien(
                  id: 1,
                  nama: "Afriza Haikal",
                  alamat: "Jl. Jalan Aja",
                  nomor_rm: "123123",
                  nomor_telepon: "088212317834",
                  tanggal_lahir: "12/12/12");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PasienDetail(pasien: pas)));
            },
          ),
        ],
      ),
    );
  }
}