import 'package:calculator/calculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("New Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(" Home"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CalculatorApp()));
          },
        ),
      ),
    );
  }
}
