import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import './pegawai_detail.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({ Key? key }) : super(key: key);

  @override
  _PegawaiFormState createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<FormState>();
  final _nipPegawaiCtrl = TextEditingController();
  final _namaPegawaiCtrl = TextEditingController();
  final _bodPegawaiCtrl = TextEditingController();
  final _noTelpPegawaiCtrl = TextEditingController();
  final _emailPegawaiCtrl = TextEditingController();
  final _passPegawaiCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldPegawai(),
              SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }
  _fieldPegawai() {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(labelText: "NIP"),
          controller: _nipPegawaiCtrl,
        ),
        SizedBox(height: 20),
        TextField(
          decoration: const InputDecoration(labelText: "Nama Pegawai"),
          controller: _namaPegawaiCtrl,
        ),
        SizedBox(height: 20),
        TextField(
          decoration: const InputDecoration(labelText: "Nomor Telepon"),
          controller: _noTelpPegawaiCtrl,
        ),
        SizedBox(height: 20),
        TextField(
          decoration: const InputDecoration(labelText: "Tanggal Lahir"),
          controller: _bodPegawaiCtrl,
        ),
        SizedBox(height: 20),
        TextField(
          decoration: const InputDecoration(labelText: "Email"),
          controller: _emailPegawaiCtrl,
        ),
        SizedBox(height: 20),
        TextField(
          decoration: const InputDecoration(labelText: "Password"),
          controller: _passPegawaiCtrl,
        ),
      ],
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          Pegawai peg = Pegawai(
              nip: _nipPegawaiCtrl.text,
              nama: _namaPegawaiCtrl.text,
              tanggal_lahir: _bodPegawaiCtrl.text,
              nomor_telepon: _noTelpPegawaiCtrl.text,
              email: _emailPegawaiCtrl.text,
              password: _passPegawaiCtrl.text);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => PegawaiDetail(pegawai: peg)));
        },
        child: const Text("Simpan"));
  }
}