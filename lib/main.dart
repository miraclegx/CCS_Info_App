import "package:ccs_info_app/main_wrapper.dart";
import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import "home_screen.dart";
import "reach_out.dart";
import "about_us.dart";

// i am on my own now, lol
void main(){
  runApp(
     MaterialApp(
      title: "CCS, FUTA",
      home: MainWrapper(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color.fromARGB(255, 217, 222, 226),
        useMaterial3: true),
    )
  );
}