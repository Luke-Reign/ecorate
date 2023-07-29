class TransportationQuestion {
  final String questionText;
  final List<TransportationAnswer> answerList;
  final String feedback;

  TransportationQuestion({
    required this.questionText,
    required this.answerList,
    required this.feedback,
  });
}

class TransportationAnswer {
  final String answerText;
  final String answerText2;

  TransportationAnswer({required this.answerText, required this.answerText2});
}

List<TransportationQuestion> getTransportationQuestions() {
  List<TransportationQuestion> list = [];

  list.add(TransportationQuestion(
    questionText:
    "Have you optimized your transportation routes to reduce fuel consumption and emissions?",
    answerList: [
      TransportationAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(TransportationQuestion(
    questionText:
    "Are you using fuel-efficient vehicles or alternative fuel vehicles in your distribution fleet?",
    answerList: [
      TransportationAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(TransportationQuestion(
    questionText:
    "Have you implemented vehicle/motorbike/tuktuk maintenance and eco-driving practices to improve fuel efficiency?",
    answerList: [
      TransportationAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(TransportationQuestion(
    questionText:
    "Are you utilizing alternative transportation methods, such as rail or waterways, where feasible?",
    answerList: [
      TransportationAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(TransportationQuestion(
    questionText:
    "Have you implemented packaging optimization measures to minimize waste and maximize space utilization during distribution?",
    answerList: [
      TransportationAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(TransportationQuestion(
    questionText:
    "Do you use sustainable packaging materials, such as recyclable or biodegradable materials, in your distribution operations?",
    answerList: [
      TransportationAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(TransportationQuestion(
    questionText:
    "Are you actively working to reduce the carbon footprint of your supply chain through collaborative initiatives with suppliers and partners?",
    answerList: [
      TransportationAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(TransportationQuestion(
    questionText:
    "Do you have a system in place to track and report your distribution-related greenhouse gas emissions?",
    answerList: [
      TransportationAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(TransportationQuestion(
    questionText:
    "Are you exploring and implementing innovative technologies or practices for efficient and sustainable distribution?",
    answerList: [
      TransportationAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  list.add(TransportationQuestion(
    questionText:
    "Are you actively promoting and encouraging your customers to choose eco-friendly delivery options, such as consolidated shipping or carbon-neutral shipping?",
    answerList: [
      TransportationAnswer(answerText: "Yes", answerText2: "No"),
    ],
    feedback: "",
  ));

  return list;
}
