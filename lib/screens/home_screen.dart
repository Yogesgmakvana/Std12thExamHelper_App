import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:std12th_board/English/instruction_page.dart';
import 'package:std12th_board/screens/english_page.dart';
import 'package:std12th_board/screens/gujrati_page.dart';
import 'package:std12th_board/screens/manovignan_page.dart';
import 'package:std12th_board/screens/sahkarPanchayat_page.dart';
import 'package:std12th_board/screens/samajShashtra_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color.fromARGB(255, 138, 192, 142), 
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('12th Arts',style: GoogleFonts.poppins(
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(accountName: Text(''), accountEmail: Text('makwanay324@gamil.com')),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('For Any Question Paper and Imp Contact Us',style: GoogleFonts.aclonica(
                fontSize: 18,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>InstructionPage()));
              },
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.blueAccent,
                  child: ListTile(
                    selectedColor: Colors.red,
                    title: Text('English'),
                    trailing:Icon(Icons.arrow_circle_right_outlined),
                  ),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GujratiPage()));
              },
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.blueAccent,
                  child: ListTile(
                    selectedColor: Colors.red,
                    title: Text('Gujrati'),
                    trailing:Icon(Icons.arrow_circle_right_outlined),
                  ),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SahkarpanchayatPage()));
              },
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.blueAccent,
                  child: ListTile(
                    selectedColor: Colors.red,
                    title: Text('Sahkar Panchayat'),
                    trailing:Icon(Icons.arrow_circle_right_outlined),
                  ),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ManovignanPage()));
              },
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.blueAccent,
                  child: ListTile(
                    selectedColor: Colors.red,
                    title: Text('Manovignan'),
                    trailing:Icon(Icons.arrow_circle_right_outlined),
                  ),
                ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SamajshashtraPage()));
              },
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.blueAccent,
                  child: ListTile(
                    selectedColor: Colors.red,
                    title: Text('Samaj Shashtra'),
                    trailing:Icon(Icons.arrow_circle_right_outlined),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          // go to english page card
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>InstructionPage()));
              },
              child: Card(
                elevation: 10,
                shadowColor:Colors.pinkAccent,
                color: Colors.lightBlue,
                child: ListTile(
                  title: Text('English'),
                  subtitle: Text('Imp MCQ, Questions, pdf.....'),
                  trailing: Icon(Icons.arrow_circle_right_rounded),
                ),
              ),
            ),
          ),
          //go to gujrati page card
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: InkWell(
               onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>GujratiPage()));
              },
               child: Card(
                elevation: 10,
                shadowColor:Colors.pinkAccent,
                color: Colors.greenAccent,
                child: ListTile(
                  title: Text('Gujrati'),
                  subtitle: Text('Imp MCQ, Questions, pdf.....'),
                  trailing: Icon(Icons.arrow_circle_right_rounded),
                ),
                         ),
             ),
           ),
           //go to sahkar panchayat card
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: InkWell(
               onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SahkarpanchayatPage()));
              },
               child: Card(
                elevation: 10,
                shadowColor:Colors.pinkAccent,
                color: Colors.tealAccent,
                child: ListTile(
                  title: Text('Sahkar Panchayat'),
                  subtitle: Text('Imp MCQ, Questions, pdf.....'),
                  trailing: Icon(Icons.arrow_circle_right_rounded),
                ),
                         ),
             ),
           ),
           //go to manovognan page
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: InkWell(
               onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ManovignanPage()));
              },
               child: Card(
                elevation: 10,
                shadowColor:Colors.pinkAccent,
                color: Colors.redAccent,
                child: ListTile(
                  title: Text('Manovignan'),
                  subtitle: Text('Imp MCQ, Questions, pdf.....'),
                  trailing: Icon(Icons.arrow_circle_right_rounded),
                ),
                         ),
             ),
           ),
            // go to samajshashta page
            Padding(
             padding: const EdgeInsets.all(8.0),
             child: InkWell(
               onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SamajshashtraPage()));
              },
               child: Card(
                elevation: 10,
                shadowColor:Colors.pinkAccent,
                color: Colors.lightGreenAccent,
                child: ListTile(
                  title: Text('Samaj Shashtra'),
                  subtitle: Text('Imp MCQ, Questions, pdf.....'),
                  trailing: Icon(Icons.arrow_circle_right_rounded),
                ),
                         ),
             ),
           ),
          
        ],
      ),
    );
  }

  

}