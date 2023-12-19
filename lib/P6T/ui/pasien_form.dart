import 'package:flutter/material.dart';

class PasienForm extends StatefulWidget {
  const PasienForm({ Key? key }) : super(key: key);

  @override
  _PasienFormState createState() => _PasienFormState();
}

class _PasienFormState extends State<PasienForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pasien")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(
                  decoration: const InputDecoration(labelText: "ID")),
              SizedBox(height: 20),
              TextField(
                  decoration: const InputDecoration(labelText: "No. RM")),
              SizedBox(height: 20),
              TextField(
                  decoration: const InputDecoration(labelText: "Nama Pasien")),
              SizedBox(height: 20),
              TextField(
                  decoration: const InputDecoration(labelText: "Alamat")),
              SizedBox(height: 20),
              TextField(
                  decoration: const InputDecoration(labelText: "Nomor Telepon")),
              SizedBox(height: 20),
              TextField(
                  decoration: const InputDecoration(labelText: "Tanggal Lahir")),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
            ],
          ),
        ),
      ),
    );
  }
}