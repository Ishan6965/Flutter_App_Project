import 'package:first_flutter_37b/pages/arithmetic_page.dart';
import 'package:material_ui/material_ui.dart';

class DashboardPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")), // AppBar
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigator
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ArithmeticPage()),
              );
            },
            child: Text("Arithmetic"),
          ), // ElevatedButton
          ElevatedButton(onPressed: () {}, child: Text("Simple Interest")),
          ElevatedButton(onPressed: () {}, child: Text("Area of Circle")),
        ],
      ),
    ); //
  }
}
