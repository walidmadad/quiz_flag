import 'Question.dart';
class AppBrain {
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
}