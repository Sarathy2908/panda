// ignore_for_file: prefer_const_constructors, unused_local_variable
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panda/page2.dart';
import 'package:hexcolor/hexcolor.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    double paddingValue = MediaQuery.of(context).size.width * 0.05;

    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 60),
              child: Text(
                'Proven\nSpecialists',
                style: GoogleFonts.ubuntu(
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(height: 60),
          Center(
            child: Image.asset(
              'assets/pic1.jpg',
              width: 300,
              height: 350,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              'We check each specialist before \n                 he starts work',
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
                MaterialPageRoute(builder: (context) => Page2()),
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
