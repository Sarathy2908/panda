// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:panda/page1.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    double paddingValue = MediaQuery.of(context).size.width * 0.05;

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                'Insured\n Orders',
                style: GoogleFonts.ubuntu(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Image.asset(
              'assets/pic3.jpg',
              width: 250,
              height: 350,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Center(
            child: Text(
              'We insure each order for the \n            amount of \$500',
              style: GoogleFonts.ubuntu(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => Page1()),
              );
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(HexColor('#20C3AF')),
            ),
            child: Text(
              'Next',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
