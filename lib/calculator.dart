import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController();
  final TextEditingController t2 = TextEditingController();

  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void subtract() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void multiply() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void divide() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Calculator")),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Output :  $sum ",
              style: const TextStyle(
                fontSize: 23,
                color: Colors.green,
              ),
            ),
            // TextField(
            //   decoration: InputDecoration(hintText: "Output.."),
            // ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(hintText: "Enter number 1"),
              controller: t1,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: const InputDecoration(hintText: "Enter number 2"),
              controller: t2,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    color: Colors.green,
                    onPressed: add,
                    child: const Text("+"),
                  ),
                  MaterialButton(
                    color: Colors.green,
                    onPressed: subtract,
                    child: const Text("-"),
                  ),
                  MaterialButton(
                    color: Colors.green,
                    onPressed: multiply,
                    child: const Text("*"),
                  ),
                  MaterialButton(
                    color: Colors.green,
                    onPressed: divide,
                    child: const Text("/"),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
