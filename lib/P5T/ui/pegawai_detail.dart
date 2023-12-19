import 'package:flutter/material.dart';
import '../model/pegawai.dart';

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
        title: const Text("Detail Pasien"),
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
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: const Text("Ubah")),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                child: const Text("Hapus"),
              )
            ],
          )
        ],
      ),
    );
  }
}