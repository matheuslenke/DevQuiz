import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/shared/models/answer_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatefulWidget {
  final QuestionModel question;
  final ValueChanged<bool> onSelected;
  const QuizWidget({Key? key, required this.question, required this.onSelected})
      : super(key: key);

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  int indexSelected = -1;

  AnswerModel answer(int index) => widget.question.answers[index];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 24,
          ),
          Text(widget.question.title, style: AppTextStyles.heading),
          SizedBox(
            height: 64,
          ),
          for (var i = 0; i < widget.question.answers.length; i++)
            AnswerWidget(
                disabled: indexSelected != -1,
                answer: answer(i),
                isSelected: indexSelected == i,
                onTap: (isCorrectAnswer) {
                  indexSelected = i;
                  setState(() {});
                  Future.delayed(Duration(seconds: 2))
                      .then((value) => widget.onSelected(isCorrectAnswer));
                })
        ],
      ),
    );
  }
}
