import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Color> warnaScafold = [
    Colors.white,
    Colors.white70,
    Colors.tealAccent,
    Colors.transparent,
    Colors.amberAccent,
  ];
  List<Color> warnaText = [
    Colors.black,
    Colors.brown,
    Colors.purple,
    Colors.red,
    Colors.amber,
  ];
  List<Color> warnaAppBar = [
    Colors.lightBlue,
    Colors.white,
    Colors.grey,
    Colors.yellowAccent,
    Colors.greenAccent,
  ];
  // INDEX (penunjuk posisi)
  int indexScafold = 0;
  int indexText = 0;
  int indexAppBar = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: warnaScafold[indexScafold],
        appBar: AppBar(
          backgroundColor: warnaAppBar[indexAppBar],
          title: Text("Color Switcher"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello There!",
                style: TextStyle(color: warnaText[indexText], fontSize: 25),
              ),
              SizedBox(height: 200),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    indexScafold = (indexScafold + 1) % warnaScafold.length;
                  });
                },
                child: Text(
                  "Tap untuk merubah warna Scafold!",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    indexText = (indexText + 1) % warnaText.length;
                  });
                },
                child: Text(
                  "Tap untuk merubah warna Text!",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    indexAppBar = (indexAppBar + 1) % warnaAppBar.length;
                  });
                },
                child: Text(
                  "Tap untuk merubah warna App Bar!",
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
