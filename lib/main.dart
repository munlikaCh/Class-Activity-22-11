import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator Application"),
        ),
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                "assets/Baka.png",
                width: 224,
                // height: 280,
              ),
              // Text("Picture"),
              Text(
                "Calculate Program",
                style: TextStyle(
                    fontFamily: "pphometowntest",
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey.withOpacity(0.3)),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Apple Amount", border: OutlineInputBorder()),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Calculate")),
              Text(
                  "Buy 5 Baka. Because each Baka cost 100 THB, you have to pay 500 THB")
            ],
          ),
        ),
      ),
    );
  }
}
