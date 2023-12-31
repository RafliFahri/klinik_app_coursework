import 'package:flutter/material.dart';
import './pasien_page.dart';
import './pasien_update_form.dart';
import '../model/pasien.dart';
import '../service/pasien_service.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;
  const PasienDetail({super.key, required this.pasien});

  @override
  _PasienDetailState createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  Stream<Pasien> getData() async* {
    Pasien data = await PasienService().getById(widget.pasien.id.toString());
    yield data;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Pasien"),
      ),
      body: StreamBuilder(
        stream: getData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          if (snapshot.connectionState != ConnectionState.done) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData &&
              snapshot.connectionState == ConnectionState.done) {
            return Text("Data Tidak Ditemukan");
          }
          return Column(
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
          );
        },
      ),
    );
  }
  _tombolUbah() {
    return StreamBuilder(
        stream: getData(),
        builder: (context, AsyncSnapshot snapshot) => ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          PasienUpdateForm(pasien: snapshot.data)));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            child: const Text("Ubah")));
  }

  _tombolHapus() {
    return ElevatedButton(
      onPressed: () {
        AlertDialog alertDialog = AlertDialog(
          content: const Text("Yakin ingin menghapus data ini?"),
          actions: [
            StreamBuilder(
              stream: getData(),
              builder: (context, AsyncSnapshot snapshot) => ElevatedButton(
                  onPressed: () async {
                    await PasienService().hapus(snapshot.data).then((value) {
                      Navigator.pop(context);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PasienPage()));
                    });
                  },
                  child: const Text("YA"),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red)),
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
