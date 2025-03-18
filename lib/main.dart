import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Flag Quiz",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        body: Padding(padding: const EdgeInsets.all(12.0), child: ExamPage()),
      ),
    );
  }
}

class ExamPage extends StatefulWidget {
  @override
  State<ExamPage> createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  List<Widget> answerResult = [];

  List<String> questions = [
    "Argentine",
    "France",
    "germany",
    "Egypt",
    "Ghana",
    "Hong Kong",
    "Italy",
    "Vitenam",
    "Sri Lanka",
  ];
  List<bool> correctAnswer = [
    true,
    false,
    false,
    true,
    true,
    true,
    false,
    false,
    true,
  ];

  List<String> questionImage = [
    "ar",
    "be",
    "cm",
    "eg",
    "gh",
    "hk",
    "in",
    "ma",
    "lk",
  ];
  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(children: answerResult),
        Expanded(
          flex: 6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(
                  'images/${questionImage[questionNumber]}.png',
                ),
                width: 300,
                height: 200,
                fit: BoxFit.cover,
              ),

              SizedBox(height: 10),
              Text(
                "This country is ${questions[questionNumber]}?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  if (correctAnswer[questionNumber] == true) {
                    answerResult.add(
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.thumb_up, color: Colors.green),
                      ),
                    );
                  } else {
                    answerResult.add(
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.thumb_down, color: Colors.red),
                      ),
                    );
                  }
                  questionNumber++;
                });
              },
              color: Colors.grey,
              child: Text("True"),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: MaterialButton(
              onPressed: () {
                setState(() {
                  if (correctAnswer[questionNumber] == false) {
                    answerResult.add(
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.thumb_up, color: Colors.green),
                      ),
                    );
                  } else {
                    answerResult.add(
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.thumb_down, color: Colors.red),
                      ),
                    );
                  }
                  questionNumber++;
                });
              },
              color: Colors.grey,
              child: Text("False"),
            ),
          ),
        ),
      ],
    );
  }
}
