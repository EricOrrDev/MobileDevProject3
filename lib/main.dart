import 'package:flutter/material.dart';
import 'tabs/business_card/business_card.dart';
import 'tabs/resume/resume.dart';
import 'tabs/predictor/predictor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project 3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: const Text('Project 3: Mobile App Dev'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person), text: 'Business Card'),
                Tab(icon: Icon(Icons.description), text: 'Resume'),
                Tab(icon: Icon(Icons.question_mark), text: 'Predictor'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [BusinessCardTab(), ResumeTab(), PredictorTab()],
          ),
        ),
      ),
    );
  }
}
