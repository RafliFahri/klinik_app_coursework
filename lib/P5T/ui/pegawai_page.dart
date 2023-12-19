import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import './pegawai_detail.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({ Key? key }) : super(key: key);

  @override
  _PegawaiPageState createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Pegawai"),
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
              Pegawai pas = Pegawai(
                  id: 1,
                  nip: "123123",
                  email: "email.email@email.email",
                  password: "passwordPlease",
                  nama: "Ahmad Prasetya",
                  nomor_telepon: "088212317834",
                  tanggal_lahir: "12/12/12");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PegawaiDetail(pegawai: pas)));
            },
          ),
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Fatur Prasetya"),
              ),
            ),
            onTap: () {
              Pegawai pas = Pegawai(
                  id: 1,
                  nip: "123123",
                  email: "email.email@email.email",
                  password: "passwordPlease",
                  nama: "Fatur Prasetya",
                  nomor_telepon: "088212317834",
                  tanggal_lahir: "12/12/12");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PegawaiDetail(pegawai: pas)));
            },
          ),
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Ahmad Sofyan"),
              ),
            ),
            onTap: () {
              Pegawai pas = Pegawai(
                  id: 1,
                  nip: "123123",
                  email: "email.email@email.email",
                  password: "passwordPlease",
                  nama: "Ahmad Sofyan",
                  nomor_telepon: "088212317834",
                  tanggal_lahir: "12/12/12");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PegawaiDetail(pegawai: pas)));
            },
          ),
          GestureDetector(
            child: const Card(
              child: ListTile(
                title: Text("Afriza Haikal"),
              ),
            ),
            onTap: () {
              Pegawai pas = Pegawai(
                  id: 1,
                  nip: "123123",
                  email: "email.email@email.email",
                  password: "passwordPlease",
                  nama: "Afriza Haikal",
                  nomor_telepon: "088212317834",
                  tanggal_lahir: "12/12/12");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PegawaiDetail(pegawai: pas)));
            },
          ),
        ],
      ),
    );
  }
}
