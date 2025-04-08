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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DigiGreen')),
      // body: Center(child: Text('Hello Worlddd!')),
      body: Center(
        child: Container(
          width: 200,
          height: 400,
          color: Colors.red,
          child: Column(
            children: [
              Image.asset(
                'assets/images/image1.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
              Image.asset(
                'assets/images/image2.jpg',
                fit: BoxFit.cover,
                height: 200,
              ),
            ],
          ),
          // child: Image.asset('assets/images/image2.jpg', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
