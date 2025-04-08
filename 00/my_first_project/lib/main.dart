// Import Flutter's core functionality
import 'package:flutter/material.dart';

// Main function - the entry point of every Dart program
void main() {
  // runApp tells Flutter to start running our application
  runApp(
    // MyApp is our root widget
    const MyApp(),
  );
}

// Define our main application widget
class MyApp extends StatelessWidget {
  // Constructor for MyApp
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Return MaterialApp which provides Material Design widgets
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hide debug banner
      // Title shown on device home screen when app is minimized
      title: 'Simple Flutter',

      // Theme configuration for the entire app
      theme: ThemeData(primarySwatch: Colors.blue),

      // Define the home page of our app
      home: const MyHomePage(),
    );
  }
}

// Define our home page widget
class MyHomePage extends StatelessWidget {
  //  stateless widget (meaning it can't change after creation) that wraps your entire app in Material Design styling
  // Constructor for MyHomePage
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Flutter')
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text('Welcome to Flutter!')],
        ),
      ),
    );
  }
}
