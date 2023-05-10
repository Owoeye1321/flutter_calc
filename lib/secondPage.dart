import 'package:flutter/material.dart';
import 'package:testing_app/firstPage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () => {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return const FirstPage();
            }))
          },
          child: const Text("hello world"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "like"),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home")
      ]),
    );
  }
}
