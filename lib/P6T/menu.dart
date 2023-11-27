import 'package:flutter/material.dart';
import './pegawai_page.dart';
import './pasien_page.dart';

class Menu extends StatelessWidget {
const Menu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Center(
        child: Row(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PegawaiPage())), 
              child: Text("Pegawai")
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PasienPage())), 
              child: Text("Pasien")
            )
          ],
        ),
      )
    );
  }
}