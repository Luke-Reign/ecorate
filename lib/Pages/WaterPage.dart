import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Models/WaterQuestionsModel.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final controllers =
  List.generate(getQuestion().length, (index) => TextEditingController());
  List<WaterQuestion> questionList = getQuestion();
  List<String?> selectedAnswers = List.generate(getQuestion().length, (index) => null);

  static const values = <String>["Yes", "No"];

  bool isSubmitted = false;

  @override
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Water Screen'),
      ),
      backgroundColor: const Color.fromARGB(255, 181, 175, 175),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: questionList.length,
                  itemBuilder: (context, index) {
                    return buildQuestionItem(index);
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: isSubmitted ? null : saveAnswers,
                    child: const Text("Save"),
                  ),
                  ElevatedButton(
                    onPressed: isSubmitted ? null : submitSurvey,
                    child: const Text("Submit"),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildQuestionItem(int index) {
    final question = questionList[index];
    final selectedAnswer = selectedAnswers[index];

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.questionText,
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 12),
            buildAnswerOptions(index),
            const SizedBox(height: 12),
            if (selectedAnswer == "Yes")
              TextFormField(
                decoration: const InputDecoration(labelText: "Measures Taken"),
                onSaved: (value) {
                  // save your value here
                },
                controller: controllers[index],
              ),
            if (selectedAnswer == "No")
              TextFormField(
                decoration: const InputDecoration(labelText: "Improvement Measures"),
                onSaved: (value) {
                  // save your value here
                },
                controller: controllers[index],
              ),
          ],
        ),
      ),
    );
  }

  Widget buildAnswerOptions(int index) {
    final selectedAnswer = selectedAnswers[index];

    return Row(
      children: values.map((value) {
        return Container(
          width: 120,
          child: RadioListTile<String>(
            value: value,
            groupValue: selectedAnswer,
            title: Text(value),
            onChanged: (newValue) {
              setState(() {
                selectedAnswers[index] = newValue;
              });
            },
          ),
        );
      }).toList(),
    );
  }

  void saveAnswers() {
    // Check if all questions have been answered
    if (selectedAnswers.contains(null)) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Please answer all questions.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return;
    }

    for (int i = 0; i < questionList.length; i++) {
      final selectedAnswer = selectedAnswers[i];
      final answerText = controllers[i].text;

      // Save the answer in the database or perform any other actions here
      print('Question $i - Answer: $selectedAnswer, Answer Text: $answerText');
    }

    setState(() {
      isSubmitted = true;
    });

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Success'),
        content: const Text('Answers saved.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );

    print('Answers saved');
  }

  void submitSurvey() async {
    // Check if all questions have been answered
    if (selectedAnswers.contains(null)) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Please answer all questions.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return;
    }

    // Submit the survey
    final answers = questionList.asMap().map((index, question) {
      return MapEntry(
        index.toString(),
        {
          'question': question.questionText,
          'answered': selectedAnswers[index],
          'answer_text': selectedAnswers[index] == "Yes" ? controllers[index].text : null,
        },
      );
    });

    await FirebaseFirestore.instance.collection("Answers").add({
      "answers": answers,
    });

    setState(() {
      isSubmitted = true;
    });

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Success'),
        content: const Text('Survey submitted.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );

    print('Survey submitted');
  }
}
