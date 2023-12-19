import 'package:flutter/material.dart';
import '../model/pasien.dart';
import './pasien_detail.dart';
import '../service/pasien_service.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({ Key? key }) : super(key: key);

  @override
  _PasienFormState createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  final _noRMPasienCtrl = TextEditingController();
  final _namaPasienCtrl = TextEditingController();
  final _alamatPasienCtrl = TextEditingController();
  final _noTelpPasienCtrl = TextEditingController();
  final _bodPasienCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldPasien(),
              SizedBox(height: 20),
              _tombolSimpan()
            ],
          ),
        ),
      ),
    );
  }
  _fieldPasien() {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(labelText: "No. RM"),
          controller: _noRMPasienCtrl,
        ),
        SizedBox(height: 20),
        TextField(
          decoration: const InputDecoration(labelText: "Nama Pasien"),
          controller: _namaPasienCtrl,
        ),
        SizedBox(height: 20),
        TextField(
          decoration: const InputDecoration(labelText: "Alamat"),
          controller: _alamatPasienCtrl,
        ),
        SizedBox(height: 20),
        TextField(
          decoration: const InputDecoration(labelText: "Nomor Telepon"),
          controller: _noTelpPasienCtrl,
        ),
        SizedBox(height: 20),
        TextField(
          decoration: const InputDecoration(labelText: "Tanggal Lahir"),
          controller: _bodPasienCtrl,
        ),
      ],
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () async {
          Pasien pas = new Pasien(nomor_rm: _noRMPasienCtrl.text, nama: _namaPasienCtrl.text, alamat: _alamatPasienCtrl.text, nomor_telepon: _noTelpPasienCtrl.text, tanggal_lahir: _bodPasienCtrl.text);
          await PasienService().simpan(pas).then((value) => 
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PasienDetail(pasien: value)))
          );
        },
        child: const Text("Simpan"));
  }
}