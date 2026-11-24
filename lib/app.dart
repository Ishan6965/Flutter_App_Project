import 'package:first_flutter_37b/pages/dashboard_page.dart';
import 'package:material_ui/material_ui.dart';

//Hot reload
// Hot restart
class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DashboardPage()); // MaterialApp
  }
}
