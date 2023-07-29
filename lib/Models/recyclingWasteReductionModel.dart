class RecyclingQuestion {
  final String questionText;
  final List<RecyclingAnswer> answerList;
  final String feedback;

  RecyclingQuestion({
    required this.questionText,
    required this.answerList,
    required this.feedback,
  });
}

class RecyclingAnswer {
  final String answerText;
  final String answerText2;

  RecyclingAnswer({required this.answerText, required this.answerText2});
}

List<RecyclingQuestion> getRecyclingQuestions() {
  List<RecyclingQuestion> list = [];

  list.add(RecyclingQuestion(
    questionText:
    "Do you have a recycling program in place for materials such as paper, plastic, glass, or metal?",
    answerList: [
      RecyclingAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(RecyclingQuestion(
    questionText:
    "Have you implemented waste segregation practices to separate recyclable materials from general waste?",
    answerList: [
      RecyclingAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(RecyclingQuestion(
    questionText:
    "Are you actively promoting and educating employees, clients, and stakeholders about recycling and waste reduction practices?",
    answerList: [
      RecyclingAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(RecyclingQuestion(
    questionText:
    "Have you assessed your waste generation and implemented measures to reduce waste at the source?",
    answerList: [
      RecyclingAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(RecyclingQuestion(
    questionText:
    "Are you using recycled or eco-friendly materials in your production processes or service provision?",
    answerList: [
      RecyclingAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(RecyclingQuestion(
    questionText:
    "Have you implemented measures to reduce packaging waste, such as using recyclable or minimal packaging?",
    answerList: [
      RecyclingAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(RecyclingQuestion(
    questionText:
    "Do you have partnerships or contracts with recycling or waste management facilities to ensure proper disposal and recycling of waste?",
    answerList: [
      RecyclingAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(RecyclingQuestion(
    questionText:
    "Are you monitoring and measuring your waste generation and recycling rates on a regular basis?",
    answerList: [
      RecyclingAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  return list;
}
