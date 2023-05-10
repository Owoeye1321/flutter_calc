import 'package:flutter/material.dart';

import 'secondPage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String buttonName = "Click here";
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello world"),
      ),
      body: Center(
        child: currentIndex == 0
            ? Container(
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.amber,
                      ),
                      onPressed: () => {
                        setState(() => {
                              buttonName != "Clicked"
                                  ? buttonName = "Clicked"
                                  : buttonName = "Click me"
                            })
                      },
                      child: Text(buttonName),
                    ),
                    ElevatedButton(
                      onPressed: () => {
                        setState(() => {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return const SecondPage();
                              }))
                            })
                      },
                      child: Text(buttonName),
                    ),
                  ],
                ),
              )
            : Image.asset("images/meme.jpeg"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          ),
        ],
        currentIndex: currentIndex,
        onTap: (int index) => {
          setState(() => {currentIndex = index})
        },
        backgroundColor: const Color.fromARGB(223, 228, 228, 228),
      ),
    );
  }
}
