import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Center(
              child: Text(
                  '🛍️List of Fruits', style: TextStyle(color: Colors.white)),
            ),
          ),
          body: Center(
            child: RichText(
              text: TextSpan(
                  children: [
                    widget(text: "🍎Apple\n",c1: Colors.red),
                    widget(text: "🍇Greps\n",c1: Colors.purpleAccent),
                    widget(text: "🍒Cherry\n",c1: Colors.purple),
                    widget(text: "🍓Strawberry\n",c1: Colors.pink),
                    widget(text: "🥭Mango\n",c1: Colors.orangeAccent),
                    widget(text: "🍍Pineapple\n",c1: Colors.green),
                    widget(text: "🍋Lemon\n",c1: Colors.orangeAccent),
                    widget(text: "🍉Watermelon\n",c1: Colors.lightGreen),
                    widget(text: "🥥Coconut\n",c1: Colors.brown),
                  ]
              ),

            ),
          ),
        ),
      ),
    );
  }
}

TextSpan widget({required text,c1,double? font})
{
  return TextSpan(
    text: "$text",
    style: TextStyle(
      color: c1,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    )
  );
}
