import 'package:DevQuiz/home/challenge/widgets/question_indicator/question_indicator_widget.dart';
import 'package:DevQuiz/home/challenge/widgets/quiz/quiz_widget.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  ChallengePage({Key? key}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(60),
              child: SafeArea(child: QuestionIndicatorWidget())),
          body: QuizWidget(
            title: "O que o flutter faz em sua totalidade?",
          )),
    );
  }
}
