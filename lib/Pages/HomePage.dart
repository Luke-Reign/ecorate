import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:ecoapp/Pages/Green%20Procurement%20Page.dart';
import 'package:ecoapp/Pages/GreenDistributionPage.dart';
import 'package:ecoapp/Pages/PollutionPreventionPage.dart';
import 'package:ecoapp/Pages/RecyclingPage.dart';
import 'package:ecoapp/Pages/WaterPage.dart';
import 'package:ecoapp/Pages/hPage.dart';
import 'package:get/get.dart';
import 'EnergyPage.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  // sign user out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout),
          )
        ],
      ),
      body: const DashboardScreen(),
      // body: Center(
      //     child: Text(
      //       "LOGGED IN AS: " + user.email!,
      //       style: TextStyle(fontSize: 20),
      //     )),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecorate'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          CardWidget(
            title: 'Water',
            icon: Icons.water_drop_outlined,
            color: Colors.blue,
            onTap: () {
              Get.to(() => QuizScreen());
            },
          ),
          CardWidget(
            title: 'Pollution Measure',
            icon: Icons.factory_sharp,
            color: Colors.blueGrey,
            onTap: () {
              Get.to(PollutionPreventionScreen());
            },
          ),
          CardWidget(
            title: 'Energy',
            icon: Icons.energy_savings_leaf,
            color: Colors.green,
            onTap: () {
              Get.to(() => EnergyScreen());
            },
          ),
          CardWidget(
            title: 'Recycling',
            icon: Icons.recycling,
            color: Colors.green,
            onTap: () {
              Get.to(RecyclingScreen());
            },
          ),
          CardWidget(
            title: 'Green Distribution',
            icon: Icons.nature_people_rounded,
            color: Colors.blueGrey,
            onTap: () {
              Get.to(GreenDistributionScreen());
            },
          ),
          CardWidget(
            title: 'Green Procurement',
            icon: Icons.nature_outlined,
            color: Colors.blueGrey,
            onTap: () {
              Get.to(GreenProcurementScreen());
            },
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final MaterialColor color;
  final VoidCallback onTap;

  const CardWidget({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 64.0),
            const SizedBox(height: 8.0),
            Text(title, style: const TextStyle(fontSize: 20.0, color: Colors.blueGrey)),
          ],
        ),
      ),
    );
  }
}
