import 'package:flutter/material.dart';
import './pegawai_page.dart';
import '../model/pegawai.dart';
import './pegawai_update_form.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;
  const PegawaiDetail({super.key, required this.pegawai});

  @override
  _PegawaiDetailState createState() => _PegawaiDetailState();
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pegawai"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            "ID : ${widget.pegawai.id}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "NIP : ${widget.pegawai.nip}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Email : ${widget.pegawai.email}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Password : ${widget.pegawai.password}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Nama Pegawai : ${widget.pegawai.nama}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Nomor Telepon : ${widget.pegawai.nomor_telepon}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Tanggal Lahir : ${widget.pegawai.tanggal_lahir}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(),
              _tombolHapus()
            ],
          )
        ],
      ),
    );
  }
  _tombolUbah() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      PegawaiUpdateForm(pegawai: widget.pegawai)));
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
        child: const Text("Ubah"));
  }

  _tombolHapus() {
    return ElevatedButton(
      onPressed: () {
        AlertDialog alertDialog = AlertDialog(
          content: const Text("Yakin ingin menghapus data ini?"),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PegawaiPage(),));
              },
              child: Text("Ya"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {Navigator.pop(context);},
              child: Text("Tidak"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
          ],
        );
        showDialog(context: context, builder: (context) => alertDialog);
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text("Hapus"),
    );
  }
}
