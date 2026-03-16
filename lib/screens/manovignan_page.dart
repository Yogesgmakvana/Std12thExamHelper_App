import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ManovignanPage extends StatefulWidget {
  const ManovignanPage({super.key});

  @override
  State<ManovignanPage> createState() => _ManovignanPageState();
}

class _ManovignanPageState extends State<ManovignanPage> {
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