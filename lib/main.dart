import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = "Click here";
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                                buttonName != "Clicked"
                                    ? buttonName = "Clicked"
                                    : buttonName = "Click me"
                              })
                        },
                        child: Text(buttonName),
                      ),
                    ],
                  ),
                )
              : const SizedBox(),
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
      ),
    );
  }
}
