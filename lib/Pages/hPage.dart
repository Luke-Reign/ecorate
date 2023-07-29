import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class questionpage extends StatefulWidget {
   const questionpage({super.key});

  @override
  State<questionpage> createState() => _questionpageState();
}

class _questionpageState extends State<questionpage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController agecontroller = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    namecontroller.dispose();
    agecontroller.dispose();
  }

   @override
   Widget build(BuildContext context) {
     return  Scaffold(
       body: Column(
         children: [
           TextFormField(decoration: InputDecoration(labelText: "Name"),controller: namecontroller,),
           TextFormField(decoration: InputDecoration(labelText: "Age"),controller: agecontroller,),
           ElevatedButton(onPressed: (){
             StoreUser(name:namecontroller.text, age:agecontroller.text);
           }, child: Text("Submit"))

         ],
       ),
     );
   }

}
Future StoreUser({required String name, required String age}) async {
  final userDoc = FirebaseFirestore.instance.collection("Answers").doc();
  final json = {
    "name": name,
    "age": age,
  };
await userDoc.set(json);
}

