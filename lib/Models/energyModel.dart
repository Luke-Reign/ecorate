class EnergyQuestion {
  final String questionText;
  final List<EnergyAnswer> answerList;
  final String feedback;

  EnergyQuestion({
    required this.questionText,
    required this.answerList,
    required this.feedback,
  });
}

class EnergyAnswer {
  final String answerText;
  final String answerText2;

  EnergyAnswer({required this.answerText, required this.answerText2});
}

List<EnergyQuestion> getEnergyQuestions() {
  List<EnergyQuestion> list = [];

  list.add(EnergyQuestion(
    questionText:
    "Have you conducted an energy audit to identify areas of high energy consumption?",
    answerList: [
      EnergyAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnergyQuestion(
    questionText:
    "What percentage of your energy comes from renewable sources?",
    answerList: [
      EnergyAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnergyQuestion(
    questionText:
    "Have you implemented energy-efficient lighting systems or equipment?",
    answerList: [
      EnergyAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnergyQuestion(
    questionText:
    "Are you tracking and reporting your energy usage and associated greenhouse gas emissions?",
    answerList: [
      EnergyAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnergyQuestion(
    questionText:
    "Have you assessed the energy efficiency of your equipment and machinery?",
    answerList: [
      EnergyAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnergyQuestion(
    questionText:
    "Do you have energy management systems or controls in place to optimize energy usage?",
    answerList: [
      EnergyAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnergyQuestion(
    questionText:
    "Have you implemented energy-saving measures in your business processes?",
    answerList: [
      EnergyAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnergyQuestion(
    questionText:
    "Are you actively promoting energy conservation practices among your employees?",
    answerList: [
      EnergyAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnergyQuestion(
    questionText:
    "Have you implemented measures to capture and utilize waste heat or excess energy?",
    answerList: [
      EnergyAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnergyQuestion(
    questionText:
    "Have you explored and implemented on-site renewable energy generation, such as solar panels or wind turbines?",
    answerList: [
      EnergyAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  return list;
}
