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
      title: 'Rowa and Columns',
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
        title: Text('Rows and Columns'),
      ),
      body: Container(
        width: 300,
        height: 500,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // children: <Text>[
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[
                Text('R1', style: TextStyle(fontSize: 30)),
                Text('R2', style: TextStyle(fontSize: 30)),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('R1C1', style: TextStyle(fontSize: 30)),
                    Text('R1C2', style: TextStyle(fontSize: 30)),
                  ],
                ),
                Text('R3', style: TextStyle(fontSize: 30)),
                Text('R4', style: TextStyle(fontSize: 30)),
              ],
            ),

            Text('A', style: TextStyle(fontSize: 30)),
            Text('B', style: TextStyle(fontSize: 30)),
            Text('C', style: TextStyle(fontSize: 30)),
            Text('D', style: TextStyle(fontSize: 30)),
            Text('E', style: TextStyle(fontSize: 30)),
            Text('F', style: TextStyle(fontSize: 30)),
            ElevatedButton(onPressed: () {}, child: Text('Click')),
          ],
        ),
      ),
    );
  }
}
