import 'package:flutter/material.dart';
import 'package:std12th_board/English/mcqQuestion_page.dart';
 

class InstructionPage extends StatelessWidget {
  const InstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD), // Light academic blue
      appBar: AppBar(
        title: const Text("પરીક્ષા સૂચનાઓ"),
        centerTitle: true,
        backgroundColor: const Color(0xFF1565C0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            /// Instruction List
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                    )
                  ],
                ),
                child: ListView(
                  children: const [

                    InstructionTile(
                        text:
                        "વિદ્યાર્થીઓને તેમના પ્રશ્નપત્ર વાંચવા માટે 15 મિનિટનો સમય આપવામાં આવે છે, આ આપવામાં આવેલ સમયનો સમજદારીપૂર્વક ઉપયોગ કરો."),

                    InstructionTile(
                        text:
                        "કોઈપણ પ્રશ્નનો જવાબ લખતાં પહેલા પ્રશ્ન બરાબર વાંચવો અને સમજવો."),

                    InstructionTile(
                        text:
                        "નવો વિભાગ નવા પેઈજ પર લખવો."),

                    InstructionTile(
                        text:
                        "તમારા વિકલ્પોને સમજદારીથી પસંદ કરો."),

                    InstructionTile(
                        text:
                        "દરેક વિભાગના પ્રશ્નોના જવાબ લખવાનો પ્રયત્ન કરો."),

                    InstructionTile(
                        text:
                        "જો તમને કોઈ ચોક્કસ પ્રશ્નનો જવાબ ખબર ન હોય તો તેને પછી માટે છોડી દો પરંતુ અંતે પ્રયત્ન જરૂર કરો."),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            /// Start Button
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1565C0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => McqquestionPage(),
                    ),
                  );
                },
                child: const Text(
                  "Go to Next Page",
                  style: TextStyle(color: Colors.white,fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


/// Reusable Instruction Widget
class InstructionTile extends StatelessWidget {
  final String text;
  const InstructionTile({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "• ",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}