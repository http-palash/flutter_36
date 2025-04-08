import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
        title: Text('Scrollviews'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.red,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.green,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.pink,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.grey,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        height: 200,
                        width: 200,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 200,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 200,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 200,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 200,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 200,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 200,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 200,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 200,
                color: Colors.pink,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 200,
                color: Colors.cyan,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 200,
                color: Colors.purple,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                height: 200,
                color: Colors.yellow,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
