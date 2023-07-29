class GreenProcurementQuestion {
  final String questionText;
  final List<GreenProcurementAnswer> answerList;
  final String feedback;

  GreenProcurementQuestion({
    required this.questionText,
    required this.answerList,
    required this.feedback,
  });
}

class GreenProcurementAnswer {
  final String answerText;
  final String answerText2;

  GreenProcurementAnswer({required this.answerText, required this.answerText2});
}

List<GreenProcurementQuestion> getGreenProcurementQuestions() {
  List<GreenProcurementQuestion> list = [];

  list.add(GreenProcurementQuestion(
    questionText: "Do you have a green procurement policy or guidelines in place?",
    answerList: [
      GreenProcurementAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(GreenProcurementQuestion(
    questionText: "Are you prioritizing the purchase of environmentally friendly products or services?",
    answerList: [
      GreenProcurementAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(GreenProcurementQuestion(
    questionText: "Do you consider the environmental impact of products or services during the procurement process?",
    answerList: [
      GreenProcurementAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(GreenProcurementQuestion(
    questionText: "Are you actively seeking suppliers who demonstrate strong environmental performance?",
    answerList: [
      GreenProcurementAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(GreenProcurementQuestion(
    questionText: "Are you promoting the use of recycled or recyclable materials in your procurement practices?",
    answerList: [
      GreenProcurementAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(GreenProcurementQuestion(
    questionText: "Are you minimizing packaging waste during procurement?",
    answerList: [
      GreenProcurementAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(GreenProcurementQuestion(
    questionText: "Are you considering energy efficiency and resource conservation features when procuring equipment or technology?",
    answerList: [
      GreenProcurementAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(GreenProcurementQuestion(
    questionText: "Do you prioritize local suppliers to reduce transportation-related emissions and support the local economy?",
    answerList: [
      GreenProcurementAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(GreenProcurementQuestion(
    questionText: "Are you promoting fair trade and ethical sourcing practices in your procurement decisions?",
    answerList: [
      GreenProcurementAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(GreenProcurementQuestion(
    questionText: "Do you regularly evaluate and review your procurement practices to identify areas for improvement?",
    answerList: [
      GreenProcurementAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  return list;
}
