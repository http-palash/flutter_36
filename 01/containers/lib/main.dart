import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Digivalet',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const MyHomePage(title: "Digivalet"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Digivalet')),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.limeAccent,
          child: const Text("Hello"),
        ),
      ),
    );
  }
}
