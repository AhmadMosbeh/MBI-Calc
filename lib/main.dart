import 'bmi_cakc.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MBI());
}

class MBI extends StatefulWidget {
  const MBI({super.key});

  @override
  State<MBI> createState() => _MBIState();
}

class _MBIState extends State<MBI> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMICalc(),
    )
  ;}
}