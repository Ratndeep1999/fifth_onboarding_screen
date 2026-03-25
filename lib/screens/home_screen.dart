import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(onPressed: () {}, child: Text("Clear State")),
        ),
      ),
    );
  }
}
