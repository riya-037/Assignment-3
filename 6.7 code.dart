import 'dart:io';

class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question(this.questionText, this.options, this.correctAnswerIndex);

  bool checkAnswer(int answerIndex) {
    return answerIndex == correctAnswerIndex;
  }
}


class Quiz {
  List<Question> questions;
  int score = 0;

  Quiz(this.questions);

  void start() {
    print("Welcome to the Quiz!\n");
    for (var i = 0; i < questions.length; i++) {
      Question q = questions[i];
      print("${i + 1}. ${q.questionText}");
      for (var j = 0; j < q.options.length; j++) {
        print("${j + 1}. ${q.options[j]}");
      }

      stdout.write("Your answer (enter option number): ");
      int? userAnswer = int.tryParse(stdin.readLineSync() ?? '');

      if (userAnswer == null ||
          userAnswer < 1 ||
          userAnswer > q.options.length) {
        print("Invalid input! Skipping this question.\n");
        continue;
      }

      if (q.checkAnswer(userAnswer - 1)) {
        print("Correct!\n");
        score++;
      } else {
        print(
          "Wrong! The correct answer is: ${q.options[q.correctAnswerIndex]}\n",
        );
      }
    }

    print("Quiz Finished!");
    print("Your total score is: $score/${questions.length}");
  }
}

void main() {
  
  List<Question> questions = [
    Question("What is the capital of France?", [
      "Berlin",
      "London",
      "Paris",
      "Madrid",
    ], 2),
    Question("Which planet is known as the Red Planet?", [
      "Earth",
      "Mars",
      "Jupiter",
      "Venus",
    ], 1),
    Question("What is 5 + 7?", ["10", "11", "12", "13"], 2),
  ];

  // Create the quiz
  Quiz myQuiz = Quiz(questions);

  // Start the quiz
  myQuiz.start();
}