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
      title: 'Inkwell Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Inkwell'),
      ),
      // body: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center)),
      body: Center(
        child: InkWell(
          onTap: () {
            debugPrint('Container Clicked');
          },
          onDoubleTap: () {
            debugPrint('Container Double Clicked');
          },
          onLongPress: () {
            debugPrint('Container Long Pressed');
          },
          onHover: (value) {
            debugPrint('Container Hovered: $value');
          },
          child: Container(
            width: 300,
            height: 300,
            color: Colors.blue,
            child:
            Center(
              child:InkWell(
                onDoubleTap: (){
                  print('Text inside container double tapped');
                },
              child: Text(
                'Click',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
              )))
          ),
          // child: ElevatedButton(
          //   onPressed: () {
          //     print('Button Clicked');
          //   },
          //   child: Text('Click'),
          // ),
        ),
      ),
    );
  }
}
