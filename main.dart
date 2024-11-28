import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(DailyMotivationApp());
}

class DailyMotivationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MotivationPage(),
    );
  }
}

class MotivationPage extends StatefulWidget {
  @override
  _MotivationPageState createState() => _MotivationPageState();
}
class _MotivationPageState extends State<MotivationPage> {
  // List of motivational quotes
  final List<String> quotes = [
    "Believe you can and you're halfway there.",
    "Success is not final, failure is not fatal: It is the courage to continue that counts.",
    "Don’t wait. The time will never be just right.",
    "The harder you work for something, the greater you’ll feel when you achieve it.",
    "Dream it. Wish it. Do it.",
    "It’s going to be hard, but hard does not mean impossible.",
    "Push yourself, because no one else is going to do it for you.",
    "Sometimes we’re tested not to show our weaknesses, but to discover our strengths.",
    "The future belongs to those who believe in the beauty of their dreams. ",
    "Do what you can, with what you have, where you are. ",
    "Start where you are. Use what you have. Do what you can. ",
    "You don’t have to be great to start, but you have to start to be great. ",
    "Believe in yourself and all that you are. Know that there is something inside you that is greater than any obstacle.  ",
    "The best way to predict the future is to create it.  ",
    "Don’t stop when you’re tired. Stop when you’re done.",
    "If you can dream it, you can do it. ",
    "Hardships often prepare ordinary people for an extraordinary destiny. ",
    "A journey of a thousand miles begins with a single step. ",
    "Success is walking from failure to failure with no loss of enthusiasm. ",
    "Act as if what you do makes a difference. It does. ",
    "You are never too old to set another goal or to dream a new dream. ",
    "It always seems impossible until it’s done. ",
    "Your time is limited, so don’t waste it living someone else’s life. ",
    "Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful. ",
  ];

  // Select a quote randomly
  String currentQuote = "Click the button to get inspired!";

  void generateQuote() {
    final random = Random();
    setState(() {
      currentQuote = quotes[random.nextInt(quotes.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Daily Motivation",
          style: TextStyle(
            color: Colors.white, // Set the title color to white
          ),
        ),
        backgroundColor: Colors.teal,  // You can keep your background color
        centerTitle: true,  // Center the title
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentQuote,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40.0,
                  fontStyle: FontStyle.italic,
                  color: Colors.teal[800],
                ),
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: generateQuote,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: EdgeInsets.symmetric(horizontal: 48, vertical: 24),
                ),
                child: Text(
                  "New Quote",
                  style: TextStyle(fontSize: 36.0, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}