import 'package:first_flutter_37b/models/arithmetic_model.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter_37b/widgets/my_button_widget.dart';
import 'package:first_flutter_37b/widgets/my_textformfield_widget.dart';

class ArithmeticPage extends StatefulWidget {
  const ArithmeticPage({super.key});

  @override
  State<ArithmeticPage> createState() => _ArithmeticPageState();
}

class _ArithmeticPageState extends State<ArithmeticPage> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  String result = "0";

  final _gap = const SizedBox(height: 12);
  final _globalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  void _calculate(String operation) {
    if (_globalKey.currentState!.validate()) {
      final first = double.tryParse(firstController.text.trim()) ?? 0;
      final second = double.tryParse(secondController.text.trim()) ?? 0;

      //Business logic lai chuttaune
      final ArithmeticModel arithmeticModel = ArithmeticModel(
        first: first,
        second: second,
      );

      final answer = arithmeticModel.calculate(operation);
      setState(() {
        if (answer == null) {
          result = "Unknown operator";
        } else {
          result = "$answer";
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: const Text("Arithmetic Operations"),
        centerTitle: true,
      ),
      body: Form(
        key: _globalKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            children: [
              MyTextFormField(
                controller: firstController,
                labelText: "Enter first number",
                errorText: "Please enter first number",
              ),
              _gap,
              MyTextFormField(
                controller: secondController,
                labelText: "Enter second number",
                errorText: "Please enter second number",
              ),
              _gap,
              MyButtonWidget(text: "Add", onPressed: () => _calculate('add')),
              const SizedBox(height: 8),
              MyButtonWidget(
                text: "Subtract",
                onPressed: () => _calculate('subtract'),
              ),
              const SizedBox(height: 8),
              MyButtonWidget(
                text: "Multiply",
                onPressed: () => _calculate('multiply'),
              ),
              const SizedBox(height: 8),
              MyButtonWidget(
                text: "Divide",
                onPressed: () => _calculate('divide'),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Result: $result",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
