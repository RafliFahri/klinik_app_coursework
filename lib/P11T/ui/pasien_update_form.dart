import 'package:flutter/material.dart';
import '../model/pasien.dart';
import './pasien_detail.dart';

class PasienUpdateForm extends StatefulWidget {
  final Pasien pasien;
  const PasienUpdateForm({super.key, required this.pasien});

  @override
  _PasienUpdateFormState createState() => _PasienUpdateFormState();
}

class _PasienUpdateFormState extends State<PasienUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _noRMPasienCtrl = TextEditingController();
  final _namaPasienCtrl = TextEditingController();
  final _alamatPasienCtrl = TextEditingController();
  final _noTelpPasienCtrl = TextEditingController();
  final _bodPasienCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    setState(() {
      _noRMPasienCtrl.text = widget.pasien.nomor_rm;
      _namaPasienCtrl.text = widget.pasien.nama;
      _alamatPasienCtrl.text = widget.pasien.alamat;
      _noTelpPasienCtrl.text = widget.pasien.nomor_telepon;
      _bodPasienCtrl.text = widget.pasien.tanggal_lahir;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ubah Pasien"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              _fieldPasien(),
              const SizedBox(
                height: 20,
              ),
              _tombolSimpan(),
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
        onPressed: () {
          Pasien pas = Pasien(nomor_rm: _noRMPasienCtrl.text, nama: _namaPasienCtrl.text, alamat: _alamatPasienCtrl.text, nomor_telepon: _noTelpPasienCtrl.text, tanggal_lahir: _bodPasienCtrl.text);
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => PasienDetail(pasien: pas)));
        },
        child: const Text("Simpan"));
  }
}