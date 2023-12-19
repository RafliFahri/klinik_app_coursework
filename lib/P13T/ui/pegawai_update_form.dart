import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import './pegawai_detail.dart';
import '../service/pegawai_service.dart';

class PegawaiUpdateForm extends StatefulWidget {
  final Pegawai pegawai;
  const PegawaiUpdateForm({super.key, required this.pegawai});

  @override
  _PegawaiUpdateFormState createState() => _PegawaiUpdateFormState();
}

class _PegawaiUpdateFormState extends State<PegawaiUpdateForm> {
  final _formKey = GlobalKey<FormState>();
  final _nipPegawaiCtrl = TextEditingController();
  final _namaPegawaiCtrl = TextEditingController();
  final _bodPegawaiCtrl = TextEditingController();
  final _noTelpPegawaiCtrl = TextEditingController();
  final _emailPegawaiCtrl = TextEditingController();
  final _passPegawaiCtrl = TextEditingController();

  Future<Pegawai> getData() async {
    Pegawai data = await PegawaiService().getById(widget.pegawai.id.toString());
    setState(() {
      _nipPegawaiCtrl.text = widget.pegawai.nip;
      _namaPegawaiCtrl.text = widget.pegawai.nama;
      _bodPegawaiCtrl.text = widget.pegawai.tanggal_lahir;
      _noTelpPegawaiCtrl.text = widget.pegawai.nomor_telepon;
      _emailPegawaiCtrl.text = widget.pegawai.email;
      _passPegawaiCtrl.text = widget.pegawai.password;
    });
    return data;
  }

  @override
  void initState() {
    super.initState();
    getData();
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
              _fieldPegawai(),
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
        onPressed: () async {
          Pegawai peg = Pegawai(nip: _nipPegawaiCtrl.text, nama: _namaPegawaiCtrl.text, tanggal_lahir: _bodPegawaiCtrl.text, nomor_telepon: _noTelpPegawaiCtrl.text, email: _emailPegawaiCtrl.text, password: _passPegawaiCtrl.text);
          String id = widget.pegawai.id.toString();
          await PegawaiService().ubah(peg, id).then((value) {
            Navigator.pop(context);
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => PegawaiDetail(pegawai: value)));
            }
          );
        },
        child: const Text("Simpan"));
  }
}