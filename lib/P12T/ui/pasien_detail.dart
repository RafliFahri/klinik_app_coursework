import 'package:flutter/material.dart';
import './pasien_page.dart';
import './pasien_update_form.dart';
import '../model/pasien.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;
  const PasienDetail({super.key, required this.pasien});

  @override
  _PasienDetailState createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
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
            "No. RM : ${widget.pasien.nomor_rm}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Nama Pasien : ${widget.pasien.nama}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Alamat : ${widget.pasien.alamat}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Nomor Telepon : ${widget.pasien.nomor_telepon}",
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            "Tanggal Lahir : ${widget.pasien.tanggal_lahir}",
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
          context, MaterialPageRoute(
            builder: (context) => PasienUpdateForm(pasien: widget.pasien)
          )
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: const Text("Ubah")
    );
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
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => PasienPage(),));
              },
              child: Text("Ya"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
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
