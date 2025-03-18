import 'Question.dart';

class AppBrain {
  int _questionNumber = 0;

  final List<Question> _questions = [
    Question("Argentine", "ar", true),
    Question("France", "be", false),
    Question("Germany", "cm", false),
    Question("Egypt", "eg", true),
    Question("Ghana", "gh", true),
    Question("Hong kong", "hk", true),
    Question("Italy", "in", false),
    Question("Vietnam", "ma", false),
    Question("Sri Lanka", "lk", true),
  ];

  List<Question> get questions => _questions;

  int get questionNumber => _questionNumber;
  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
      _questionNumber++;
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset(){
    _questionNumber = 0;
  }
}
