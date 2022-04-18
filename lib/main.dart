
import 'package:flutter/material.dart';
import '../views/app.dart';
import 'dart:io';

void main() async {
  HttpOverrides.global = MyHttpOverrides();
  runApp( App());
}

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }

}

