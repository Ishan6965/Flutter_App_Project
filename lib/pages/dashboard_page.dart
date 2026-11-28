import 'package:material_ui/material_ui.dart';
import 'package:first_flutter_37b/pages/arithmetic_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ArithmeticPage(),
                  ),
                );
              },
              child: const Text("Arithmetic"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to Simple Interest page
              },
              child: const Text("Simple Interest"),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                // TODO: Navigate to Area of Circle page
              },
              child: const Text("Area of Circle"),
            ),
          ],
        ),
      ),
    );
  }
}
