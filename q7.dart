class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question(this.questionText, this.options, this.correctAnswerIndex);
}

class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    for (var q in questions) {
      print(q.questionText);
      for (int i = 0; i < q.options.length; i++) {
        print("${i + 1}. ${q.options[i]}");
      }

      // for simplicity, assume the user always answers '1'
      int userAnswer = 1;
      if (userAnswer - 1 == q.correctAnswerIndex) {
        print("Correct!\n");
        score++;
      } else {
        print("Wrong!\n");
      }
    }

    print("Quiz finished! Your score: $score/${questions.length}");
  }
}

void main() {
  List<Question> qList = [
    Question("What is the capital of Bangladesh?", ["Dhaka", "Chittagong", "Sylhet"], 0),
    Question("What is 2 + 2?", ["3", "4", "5"], 1),
    Question("Which language is used for Flutter?", ["Python", "Dart", "Java"], 1),
  ];

  Quiz quiz = Quiz(qList);
  quiz.start();
}
