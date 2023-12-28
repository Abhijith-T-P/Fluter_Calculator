import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final TextEditingController _num1controller = TextEditingController();
  final TextEditingController _num2controller = TextEditingController();
  double result = 0;

  void add() {
    print("no 1 = ${_num1controller.text} ");
    print("no 2 = ${_num2controller.text} ");
    double n1 = double.parse(_num1controller.text);
    double n2 = double.parse(_num2controller.text);

    print(result);
    setState(() {
      result = n1 + n2;
    });
  }

  void sub() {
    print("no 1 = ${_num1controller.text} ");
    print("no 2 = ${_num2controller.text} ");
    double n1 = double.parse(_num1controller.text);
    double n2 = double.parse(_num2controller.text);

    print(result);
    setState(() {
      result = n1 - n2;
    });
  }

  void mul() {
    print("no 1 = ${_num1controller.text} ");
    print("no 2 = ${_num2controller.text} ");
    double n1 = double.parse(_num1controller.text);
    double n2 = double.parse(_num2controller.text);

    print(result);
    setState(() {
      result = n1 * n2;
    });
  }

  void div() {
    print("no 1 = ${_num1controller.text} ");
    print("no 2 = ${_num2controller.text} ");
    double n1 = double.parse(_num1controller.text);
    double n2 = double.parse(_num2controller.text);

    print(result);
    setState(() {
      result = n1/n2;
    });
  }
  void clearall(){
    setState(() {
      _num1controller.clear();
      _num2controller.clear();
      result= 0.0;
      

    });
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back_ios_new_outlined),
        title: const Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _num1controller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _num2controller,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    add();
                  },
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(20))),
                  child: const Text("+"),
                ),
                ElevatedButton(
                  onPressed: () {
                    sub();
                  },
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(20))),
                  child: const Text("-"),
                ),
                ElevatedButton(
                  onPressed: () {
                    mul();
                  },
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(20))),
                  child: const Text("*"),
                ),
                ElevatedButton(
                  onPressed: () {
                    div();
                  },
                  style: const ButtonStyle(
                      padding: MaterialStatePropertyAll(EdgeInsets.all(20))),
                  child: const Text("/"),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            ListTile(
              title: Center(child: Text("Result  $result")),
              tileColor: Colors.deepOrange,
              textColor: Colors.white,
            ),
            Container(
              child: ElevatedButton(onPressed: (){
                clearall();
              }, child: Text("clear")),
            )
          ],
        ),
      ),
    ));
  }
}
