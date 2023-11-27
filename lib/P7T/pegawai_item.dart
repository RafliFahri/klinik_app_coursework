import 'package:flutter/material.dart';
import 'pegawai.dart';
import 'pegawai_detail.dart';

class PegawaiItem extends StatelessWidget {
  final Pegawai pegawai;
  const PegawaiItem({ super.key, required this.pegawai });

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      child: Card(
        child: ListTile(
          title: Text("${pegawai.nama}"),
          subtitle: Text("${pegawai.email}"),
        ),
      ),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PegawaiDetail(pegawai: pegawai))),
    );
  }
}