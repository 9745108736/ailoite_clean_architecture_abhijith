import 'package:flutter/material.dart';
import 'features/rum_list/presentation/pages/rum_list_page.dart';
import 'injection_container.dart' as di;

void main() {
  runApp(MyApp());
}

void diInit() async {
  await di.init();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rum List',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.green.shade800,
        accentColor: Colors.green.shade600,
      ),
      home: const RumListPage(),
    );
  }
}
