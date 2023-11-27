import 'package:flutter/material.dart';
import './pasien.dart';
import './pasien_item.dart';
import './pasien_form.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({ Key? key }) : super(key: key);

  @override
  _PasienPageState createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
        actions: [
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => PasienForm())),
          )
        ],
      ),
      body: ListView(
        children: [
          PasienItem(
            pasien: Pasien(
              id: 12,
              nomor_rm: "123213",
              nama: "Ahmad Kusumah",
              tanggal_lahir: "31-2-1999",
              nomor_telepon: "08889821234",
              alamat: "Jl. Jalan ke Haji Ridi"
            )
          ),
          PasienItem(
            pasien: Pasien(
              id: 12,
              nomor_rm: "123213",
              nama: "Ahmad Kusumah",
              tanggal_lahir: "31-2-1999",
              nomor_telepon: "08889821234",
              alamat: "Jl. Jalan ke Haji Ridi"
            )
          ),
          PasienItem(
            pasien: Pasien(
              id: 12,
              nomor_rm: "123213",
              nama: "Ahmad Kusumah",
              tanggal_lahir: "31-2-1999",
              nomor_telepon: "08889821234",
              alamat: "Jl. Jalan ke Haji Ridi"
            )
          ),
        ],
      ),
    );
  }
}