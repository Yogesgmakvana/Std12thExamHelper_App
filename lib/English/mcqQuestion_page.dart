import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class McqquestionPage extends StatefulWidget {
  const McqquestionPage({super.key});

  @override
  State<McqquestionPage> createState() => _McqquestionPageState();
}

class _McqquestionPageState extends State<McqquestionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE3F2FD),
      appBar: AppBar(
        title: const Text("Select Exam Type"),
        centerTitle: true,
        backgroundColor: const Color(0xFF1565C0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
          
              const SizedBox(height: 30),
          
              /// MCQ Card
              ExamCard(
                title: "MCQ",
                icon: Icons.quiz,
                color: const Color(0xFF1565C0),
                onTap: () {},
              ),
          
              const SizedBox(height: 30),
          
              /// Question Card
              ExamCard(
                title: "Questions",
                icon: Icons.description,
                color: const Color(0xFF2E7D32),
                onTap: () {},
              ),
          
              const SizedBox(height: 40),
          
              /// PDF Button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PdfViewPage(
                            pdfPath: 'assets/Lapwing.pdf',
                          ),
                        ),
                      );
                    },
                    child: const Text("Lapwing(ફકરામાંથી જવાબ આપો)"),
                  ),
                ),
              ),
          
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: SizedBox(
                  height: 50,
                  width: 250,
                   child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PdfViewPage1(
                            pdfPath: 'assets/Function question in English.pdf',
                          ),
                        ),
                      );
                    },
                    child: const Text("Function"),
                               ),
                 ),
               ),
          
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PdfViewPage1(
                            pdfPath: 'assets/Essay Writting.pdf',
                          ),
                        ),
                      );
                    },
                    child: const Text("Essay Writing"),
                  ),
                ),
              ),
          
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: SizedBox(
                  height: 50,
                  width: 250,
                   child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PdfViewPage1(
                            pdfPath: 'assets/Do as Directed.pdf',
                          ),
                        ),
                      );
                    },
                    child: const Text("Do as Directed"),
                               ),
                 ),
               ),
          
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: SizedBox(
                  height: 60,
                  width: 250,
                   child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PdfViewPage1(
                            pdfPath: 'assets/QuestionBank_12thStd_G_English(SL).pdf',
                          ),
                        ),
                      );
                    },
                    child: const Text("English Question(ગુજરાત માધ્યમમક અને ઉચ્ચતર માધ્યમમક મિક્ષણ બોર્ડ , ગાાંધીનગર )"),
                               ),
                 ),
               ),
          
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PdfViewPage1(
                            pdfPath: 'assets/Articles_A_An_The.pdf',
                          ),
                        ),
                      );
                    },
                    child: const Text("Articals, A, A, The(ગુજરાતી માં)"),
                  ),
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PdfViewPage1(
                            pdfPath: 'assets/Prepositions.pdf',
                          ),
                        ),
                      );
                    },
                    child: const Text("Prepositions(ગુજરાતી માં)"),
                  ),
                ),
              ),
          
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PdfViewPage1(
                            pdfPath: 'assets/Transformation of Sentences.pdf',
                          ),
                        ),
                      );
                    },
                    child: const Text("Transformation of sentences(ગુજરાતી માં)"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////////////
// ✅ Proper PDF View Page (NEW CLASS – IMPORTANT)
//////////////////////////////////////////////////////////////

class PdfViewPage extends StatelessWidget {
  final String pdfPath;

  const PdfViewPage({super.key, required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lapwing pdf"),
        backgroundColor: const Color(0xFF1565C0),
      ),
      body: SfPdfViewer.asset(pdfPath),
    );
  }
}


class PdfViewPage1 extends StatelessWidget {
  final String pdfPath;

  const PdfViewPage1({super.key, required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Function"),
        backgroundColor: const Color(0xFF1565C0),
      ),
      body: SfPdfViewer.asset(pdfPath),
    );
  }
}

//////////////////////////////////////////////////////////////
// Reusable Card Widget
//////////////////////////////////////////////////////////////

class ExamCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const ExamCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Container(
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 8,
            )
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              decoration: BoxDecoration(
                color: color,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 40,
              ),
            ),
            const SizedBox(width: 20),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}