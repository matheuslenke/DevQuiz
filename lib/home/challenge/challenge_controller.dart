// CurrentPage

import 'package:flutter/foundation.dart';

class ChallengeController {
  final currentPageNotifier = ValueNotifier<int>(1);
  int get currentPage => currentPageNotifier.value;
  set currentPage(int value) => currentPageNotifier.value = value;

  int correctAnswersQuantity = 0;

  increaseCorrectAnswers() => correctAnswersQuantity += 1;
}
