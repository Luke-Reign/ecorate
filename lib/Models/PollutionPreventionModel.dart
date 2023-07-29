class EnvironmentalImpactQuestion {
  final String questionText;
  final List<EnvironmentalImpactAnswer> answerList;
  final String feedback;

  EnvironmentalImpactQuestion({
    required this.questionText,
    required this.answerList,
    required this.feedback,
  });
}

class EnvironmentalImpactAnswer {
  final String answerText;
  final String answerText2;

  EnvironmentalImpactAnswer({required this.answerText, required this.answerText2});
}

List<EnvironmentalImpactQuestion> getEnvironmentalImpactQuestions() {
  List<EnvironmentalImpactQuestion> list = [];

  list.add(EnvironmentalImpactQuestion(
    questionText: "Have you conducted an environmental impact assessment of your production/service provision processes?",
    answerList: [
      EnvironmentalImpactAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnvironmentalImpactQuestion(
    questionText: "Are you using environmentally friendly raw materials or inputs in your production/service provision?",
    answerList: [
      EnvironmentalImpactAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnvironmentalImpactQuestion(
    questionText: "Have you implemented pollution control measures, such as air filtration systems or wastewater treatment systems?",
    answerList: [
      EnvironmentalImpactAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnvironmentalImpactQuestion(
    questionText: "Are you monitoring and reporting your emissions, effluents, or waste generation on a regular basis?",
    answerList: [
      EnvironmentalImpactAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnvironmentalImpactQuestion(
    questionText: "Have you implemented measures to reduce or eliminate hazardous substances in your production/service provision?",
    answerList: [
      EnvironmentalImpactAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnvironmentalImpactQuestion(
    questionText: "Are you implementing best practices for waste management, such as proper segregation, recycling, or safe disposal?",
    answerList: [
      EnvironmentalImpactAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnvironmentalImpactQuestion(
    questionText: "Have you implemented energy-efficient or low-emission technologies in your production/service provision processes?",
    answerList: [
      EnvironmentalImpactAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnvironmentalImpactQuestion(
    questionText: "Are you actively creating awareness on pollution prevention practices among your employees and stakeholders?",
    answerList: [
      EnvironmentalImpactAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(EnvironmentalImpactQuestion(
    questionText: "Do you have a system in place to respond to and mitigate environmental incidents or accidents?",
    answerList: [
      EnvironmentalImpactAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  return list;
}
