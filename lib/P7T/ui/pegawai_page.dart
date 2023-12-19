import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import './pegawai_form.dart';
import './pegawai_item.dart';

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
        title: const Text('Pegawai'),
        actions: [GestureDetector(
          child: const Icon(Icons.add),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PegawaiForm())),
        )],
      ),
      body: ListView(
        children: [
          PegawaiItem(
              pegawai: Pegawai(
                  id: 12,
                  nip: "123213",
                  nama: "Ahmad Kusumah",
                  tanggal_lahir: "31-2-1999",
                  nomor_telepon: "08889821234",
                  email: "fikal.ahmad22@yakin.com",
                  password: "asdkjahjkda")),
                  PegawaiItem(
              pegawai: Pegawai(
                  id: 12,
                  nip: "123213",
                  nama: "Ahmad Kusumah",
                  tanggal_lahir: "31-2-1999",
                  nomor_telepon: "08889821234",
                  email: "fikal.ahmad22@yakin.com",
                  password: "asdkjahjkda")),
                  PegawaiItem(
              pegawai: Pegawai(
                  id: 12,
                  nip: "123213",
                  nama: "Ahmad Kusumah",
                  tanggal_lahir: "31-2-1999",
                  nomor_telepon: "08889821234",
                  email: "fikal.ahmad22@yakin.com",
                  password: "asdkjahjkda")),
        ],
      ),
    );
  }
}