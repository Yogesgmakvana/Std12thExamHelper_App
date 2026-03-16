import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SahkarpanchayatPage extends StatefulWidget {
  const SahkarpanchayatPage({super.key});

  @override
  State<SahkarpanchayatPage> createState() => _SahkarpanchayatPageState();
}

class _SahkarpanchayatPageState extends State<SahkarpanchayatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Opps, We Are not Available........',style: GoogleFonts.abel(
                fontSize: 25,
              ),),
            ),
            Text('Contact us:makwanay324@gamil.com',style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 15,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}