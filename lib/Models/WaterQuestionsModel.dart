class WaterQuestion {
  final String questionText;
  final List<WaterAnswer> answerList;
  final String feedback;

  WaterQuestion({
    required this.questionText,
    required this.answerList,
    required this.feedback,
  });
}

class WaterAnswer {
  final String answerText;
  final String answerText2;

  WaterAnswer({required this.answerText, required this.answerText2,});
}

List<WaterQuestion> getQuestion() {
  List<WaterQuestion> list = [];


  list.add(WaterQuestion(
      questionText:
      "Have you implemented water-saving technologies or practices, such as low-flow fixtures or leak detection systems?",
      answerList: [WaterAnswer(answerText: "Yes", answerText2: "No")],
      feedback: ""));
  list.add(WaterQuestion(
      questionText:
      "Are you monitoring and reporting your water usage on a regular basis?",
      answerList: [WaterAnswer(answerText: "Yes", answerText2: "No")],
      feedback: ""));
  list.add(WaterQuestion(
      questionText:
      "Have you set any targets or goals for further reducing water consumption?",
      answerList: [WaterAnswer(answerText: "Yes", answerText2: "No")],
      feedback: ""));
  list.add(WaterQuestion(
      questionText:
      "Do you have a system in place to detect and repair water leaks promptly?",
      answerList: [WaterAnswer(answerText: "Yes", answerText2: "No")],
      feedback: ""));
  list.add(WaterQuestion(
      questionText:
      "Have you implemented water-efficient cleaning practices, such as using low-water consumption equipment or adopting efficient cleaning methods?",
      answerList: [WaterAnswer(answerText: "Yes", answerText2: "No")],
      feedback: ""));
  list.add(WaterQuestion(
      questionText:
      "Have you optimized your water consumption in production processes or service provision?",
      answerList: [WaterAnswer(answerText: "Yes", answerText2: "No")],
      feedback: ""));
  list.add(WaterQuestion(
      questionText:
      "Are you actively monitoring and managing your wastewater or effluent to minimize water pollution?",
      answerList: [WaterAnswer(answerText: "Yes", answerText2: "No")],
      feedback: ""));
  return list;
}