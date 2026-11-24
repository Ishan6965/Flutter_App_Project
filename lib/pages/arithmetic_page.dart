import 'package:flutter/widgets.dart';
import 'package:material_ui/material_ui.dart';

// Josko state change hudaina[cite: 3]
class ArithmeticPage extends StatefulWidget {
  const new({super.key}); // or ArithmeticPage({super.key})[cite: 3]

  @override
  State<ArithmeticPage> createState() => _ArithmeticPageState();
}

class _ArithmeticPageState extends State<ArithmeticPage> {
  //Variables declare[cite: 3]
  // Controller[cite: 3]
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  double result = 0;
  final _gap = SizedBox(height: 8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Arithmetic operations")),
      body: Column(
        children: [
          TextFormField(
            controller: firstController,
            decoration: InputDecoration(
              labelText: "Enter first no",
              border: OutlineInputBorder(),
            ), // InputDecoration[cite: 3, 4]
          ), // TextFormField[cite: 4]
          _gap,
          TextFormField(
            controller: secondController,
            decoration: InputDecoration(border: OutlineInputBorder()),
          ), // TextFormField[cite: 4]
          ElevatedButton(onPressed: () {}, child: Text("Add")),
          _gap,
          ElevatedButton(onPressed: () {}, child: Text("Subtract")),
          _gap,
          ElevatedButton(onPressed: () {}, child: Text("Multiply")),
          _gap,
          ElevatedButton(onPressed: () {}, child: Text("Divide")),
          _gap,
          Text("Result : $result"),
        ],
      ), // Column[cite: 4]
    ); // Scaffold[cite: 4]
  }
}
