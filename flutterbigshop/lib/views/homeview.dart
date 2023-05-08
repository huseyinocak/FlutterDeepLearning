import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Deep Learning"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/StatelessDeepView");
                },
                child: const Text("Stateless Widget")),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/StatefulDeepView");
                },
                child: const Text("Stateful Widget"))
          ],
        ),
      ),
    );
  }
}
