import 'package:flutter/material.dart';
import 'package:klinik_app/P11/helpers/user_info.dart';
import 'ui/beranda.dart';
import 'ui/login.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  var token = await UserInfo().getToken();
  var userid = await UserInfo().getUserID();
  var username = await UserInfo().getUsername();
  print("Token : $token");
  print("user ID : $userid");
  print("Username : $username");
  runApp(
    MaterialApp(
      title: "Klinik APP",
      home: token == null ? Login() : Beranda(),
    )
  );
}