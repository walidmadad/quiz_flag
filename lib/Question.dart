class Question {
  late String questionText; 
  late String questionImage;
  late bool answer;

  Question(String questionText, String questionImage, bool answer){
    this.questionText = questionText;
    this.questionImage = questionImage;
    this.answer = answer;
  }
}