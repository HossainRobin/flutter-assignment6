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
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Gallery"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                child: Text(
                  "Welcome to My Photo Gallery!",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Form(
                    child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Search for photos...",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                )),
              ),
              Container()
            ],
          ),
        ),
      ),
    );
  }
}
