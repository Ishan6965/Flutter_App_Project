import 'package:material_ui/material_ui.dart';

class MyButtonWidget extends StatelessWidget {
  const new({super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          elevation: 5,
          textStyle: TextStyle(fontSize: 14, fontWeight: .bold),
          shape: RoundedRectangleBorder(
            borderRadius: .circular(15),
          ), // RoundedRectangleBorder
        ),
        onPressed: onPressed,
        child: Text(text),
      ), // ElevatedButton
    ); // SizedBox
  }
}
