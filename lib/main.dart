import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Challenge',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter UI Challenge 🏷️"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "🌟 Welcome to Flutter! 🌟",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Button
            ElevatedButton(
              onPressed: () {
                debugPrint("🚀 Button was clicked!");
              },
              child: const Text("Click Me 💬"),
            ),
            const SizedBox(height: 20),

            // Image from Internet
            Image.network(
              "https://flutter.dev/assets/homepage/carousel/slide_1-bg-1a5fb0b2c9513762c508d57f075444ef98a32956543a4d6ac613a5a12ddf967d.jpg",
              width: 250,
            ),
          ],
        ),
      ),
    );
  }
}
