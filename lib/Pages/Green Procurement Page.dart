import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecoapp/Models/greenProcurementModel.dart';

import 'package:flutter/material.dart';


class GreenProcurementScreen extends StatefulWidget {
  const GreenProcurementScreen({Key? key}) : super(key: key);

  @override
  State<GreenProcurementScreen> createState() => _GreenProcurementScreenState();
}

class _GreenProcurementScreenState extends State<GreenProcurementScreen> {
  final controllers =
  List.generate(getGreenProcurementQuestions().length, (index) => TextEditingController());
  List<GreenProcurementQuestion> greenprocurementquestionList = getGreenProcurementQuestions();
  List<String?> selectedAnswers = List.generate(getGreenProcurementQuestions().length, (index) => null);
  List<bool> isEditing = List.generate(getGreenProcurementQuestions().length, (index) => false);

  static const values = <String>["Yes", "No"];

  @override
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Green Procurement Page '),
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
                  itemCount: greenprocurementquestionList.length,
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
                    onPressed: () {
                      saveAnswers();
                    },
                    child: const Text("Save"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      submitSurvey();
                    },
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
    final question = greenprocurementquestionList[index];
    final selectedAnswer = selectedAnswers[index];
    final isCurrentlyEditing = isEditing[index];

    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    question.questionText,
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    toggleEditing(index);
                  },
                  icon: Icon(isCurrentlyEditing ? Icons.save : Icons.edit),
                ),
              ],
            ),
            const SizedBox(height: 12),
            buildAnswerOptions(index),
            const SizedBox(height: 12),
            if (selectedAnswer == "Yes" && isCurrentlyEditing)
              TextFormField(
                decoration: const InputDecoration(labelText: "Measures Taken"),
                onSaved: (value) {
                  // save your value here
                },
                controller: controllers[index],
              ),
            if (selectedAnswer == "No" && isCurrentlyEditing)
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
    final isCurrentlyEditing = isEditing[index];

    return Row(
      children: values.map((value) {
        return Container(
          width: 120,
          child: RadioListTile<String>(
            value: value,
            groupValue: selectedAnswer,
            title: Text(value),
            onChanged: isCurrentlyEditing
                ? (newValue) {
              setState(() {
                selectedAnswers[index] = newValue;
              });
            }
                : null,
          ),
        );
      }).toList(),
    );
  }

  void toggleEditing(int index) {
    setState(() {
      if (isEditing[index]) {
        saveAnswer(index);
      }
      isEditing[index] = !isEditing[index];
    });
  }

  void saveAnswer(int index) {
    final selectedAnswer = selectedAnswers[index];
    final answerText = controllers[index].text;

    // Save the answer in the database or perform any other actions here
    print('Question $index - Answer: $selectedAnswer, Answer Text: $answerText');
  }

  void saveAnswers() {
    for (int i = 0; i < greenprocurementquestionList.length; i++) {
      if (isEditing[i]) {
        saveAnswer(i);
      }
    }
  }

  void submitSurvey() async {
    final answers = greenprocurementquestionList.asMap().map((index, question) {
      return MapEntry(
        index.toString(),
        {
          'question': question.questionText,
          'answered': selectedAnswers[index],
          'answer_text': selectedAnswers[index] == "Yes" ? controllers[index].text : null,
        },
      );
    });

    await FirebaseFirestore.instance.collection("Green Procurement Answers").add({
      "answers": answers,
    });

    print('Survey submitted');
  }
}
