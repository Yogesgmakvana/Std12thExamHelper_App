import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GujratiPage extends StatefulWidget {
  const GujratiPage({super.key});

  @override
  State<GujratiPage> createState() => _GujratiPageState();
}

class _GujratiPageState extends State<GujratiPage> {
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