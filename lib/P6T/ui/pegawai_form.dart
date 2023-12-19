import 'package:flutter/material.dart';

class PegawaiForm extends StatefulWidget {
  const PegawaiForm({ Key? key }) : super(key: key);

  @override
  _PegawaiFormState createState() => _PegawaiFormState();
}

class _PegawaiFormState extends State<PegawaiForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tambah Pegawai")),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(labelText: "ID")),
              SizedBox(height: 20),
              TextField(
                  decoration: const InputDecoration(labelText: "NIP")),
              SizedBox(height: 20),
              TextField(
                  decoration: const InputDecoration(labelText: "Nama Pegawai")),
              SizedBox(height: 20),
              TextField(
                  decoration: const InputDecoration(labelText: "Nomor Telepon")),
              SizedBox(height: 20),
              TextField(
                  decoration: const InputDecoration(labelText: "Tanggal Lahir")),
              SizedBox(height: 20),
              TextField(
                  decoration: const InputDecoration(labelText: "Email")),
              SizedBox(height: 20),
              TextField(
                  decoration: const InputDecoration(labelText: "Password")),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: const Text("Simpan"))
            ],
          ),
        ),
      ),
    );
  }
}