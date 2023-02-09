import 'package:flutter/material.dart';
import 'single_child_scroll_view.dart';
import 'orientation_changer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'layout Test';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: OrientationChangerExample(),
    );
  }
}
