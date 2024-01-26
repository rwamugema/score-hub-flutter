import 'package:flutter/material.dart';
import 'package:score_hub/widgets/side_menu.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScoreHub(),
    );
  }
}

class ScoreHub extends StatelessWidget {
  const ScoreHub({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(children: [
        const Expanded(
          child: Row(
            children: [SideMenu()],
          ),
        ),
        //playing
        Container(
          width: double.infinity,
          height: 70.0,
          color: Colors.green,
        )
      ]),
    );
  }
}
