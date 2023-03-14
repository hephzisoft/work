import 'package:flutter/material.dart';

void main() {
  runApp(const Homepage());
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          actions: const [
            Icon(Icons.camera_alt_outlined),
            SizedBox(
              width: 25,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 25,
            ),
            Icon(Icons.more_vert_rounded)
          ],
        ),
        body: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.store),
                Text("Chats"),
                Text("Status"),
                Text("Calls")
              ],
            ),
          )
        ]),
      ),
    );
  }
}
