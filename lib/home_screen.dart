import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Week 1 Task a'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'increment and decrement Counter',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor:
                              Colors.white // Set the background color here
                          ),
                      onPressed: () {
                        setState(() {
                          if (number == 0) {
                            number = 0;
                          } else {
                            number--;
                          }
                        });
                      },
                      child: const Text('-', style: TextStyle(fontSize: 25))),
                  Text(number.toString(), style: const TextStyle(fontSize: 25)),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor:
                              Colors.white // Set the background color here
                          ),
                      onPressed: () {
                        setState(() {
                          number++;
                        });
                      },
                      child: const Text('+', style: TextStyle(fontSize: 25))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
