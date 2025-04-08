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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Listview'),
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
    var arrNames = [
      "Name_One",
      "Name_Two",
      "Name_Three",
      "Name_Four",
      "Name_Five",
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      //     body: ListView(
      //       // scrollDirection: Axis.horizontal,
      //       scrollDirection: Axis.vertical,
      //       reverse: true,
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text(
      //             'One',
      //             style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text(
      //             'Two',
      //             style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text(
      //             'Three',
      //             style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text(
      //             'Four',
      //             style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //           ),
      //         ),
      //         Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Text(
      //             'Five',
      //             style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //           ),
      //         ),
      //       ],
      //     ),

      // body: ListView.builder(
      //   // itemCount: 100,
      //   itemCount: arrNames.length,
      //   // itemExtent: 500,
      //   // scrollDirection: Axis.vertical,
      //   scrollDirection: Axis.horizontal,
      //   itemBuilder: (context, index) {
      //     // return ListTile(
      //     //   title: Text('Item $index'),
      //     //   subtitle: Text('Subtitle $index'),
      //     //   leading: Icon(Icons.list),
      //     //   trailing: Icon(Icons.arrow_forward),
      //     //   onTap: () {
      //     //     print('Tapped on item $index');
      //     //   },
      //     // );

      //     // return Text(
      //     //   'One',
      //     //   style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //     // );

      //     return Text(
      //       arrNames[index],
      //       style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //     );
      //   },
      // ),

      // body: ListView.separated(
      //   itemCount: arrNames.length,
      //   itemBuilder: (context, index) {
      //     return Text(
      //       arrNames[index],
      //       style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
      //     );
      //   },
      //   separatorBuilder: (context, index) {
      //     return const Divider(color: Colors.black, height: 50, thickness: 2);
      //   },
      // ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      arrNames[index],
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        arrNames[index],
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  arrNames[index],
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          );
        },
        itemCount: arrNames.length,
        separatorBuilder: (context, index) {
          return const Divider(color: Colors.black, height: 50, thickness: 1);
        },
      ),
    );
  }
}
