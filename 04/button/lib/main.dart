import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.deepPurple),
      home: const MyHomePage(title: 'DigiValet'),
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
      appBar: AppBar(title: Text(widget.title)),

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Outlined Button with custom border color and size
              OutlinedButton(
                onPressed: () => debugPrint('Outlined Button Pressed'),
                onLongPress: () => debugPrint('Outlined Button Long Pressed'),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.blue, width: 2),
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text(
                  'Outlined Button',
                  style: TextStyle(color: Colors.blue),
                ),
              ),

              const SizedBox(height: 16.0),

              // Elevated Button with custom background color
              ElevatedButton(
                onPressed: () => debugPrint('Elevated Button Pressed'),
                onLongPress: () => debugPrint('Elevated Button Long Pressed'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                ),
                child: const Text('Elevated Button'),
              ),

              const SizedBox(height: 16.0),

              // Text Button with custom text style
              TextButton(
                onPressed: () => debugPrint('Text Button Pressed'),
                onLongPress: () => debugPrint('Text Button Long Pressed'),
                style: TextButton.styleFrom(
                  foregroundColor: Colors.blue,
                  padding: const EdgeInsets.all(16.0),
                  textStyle: const TextStyle(fontSize: 20),
                  side: const BorderSide(color: Colors.black, width: 2),
                ),
                child: const Text(
                  'Text Button',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
