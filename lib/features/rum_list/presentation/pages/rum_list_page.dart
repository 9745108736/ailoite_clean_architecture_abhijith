import 'package:flutter/material.dart';

import '../../../../core/util/color.dart';

class RumListPage extends StatefulWidget {
  const RumListPage({Key? key}) : super(key: key);

  @override
  _RumListPageState createState() => _RumListPageState();
}

class _RumListPageState extends State<RumListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("Rum List"), backgroundColor: oliveColor),
      body: Column(
        children: const [
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
              hintText: 'Search Tech Rum',
            ),
          ),
        ],
      ),
    );
  }
}
