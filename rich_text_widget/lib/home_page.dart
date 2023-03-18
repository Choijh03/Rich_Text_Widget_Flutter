import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      //start from left side
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //insta grampost
        Container(
          height: 350,
          color: Colors.grey[300],
        ),
        //name and caption
        Padding(
          padding: const EdgeInsets.all(8.0),
          //if regular text is used, it could over flow if text is too long
          //if Richtext is used there will be no overflow, it will simply go to next line
          child: RichText(
            text: const TextSpan(
              //you can set the default text style for all
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                    text: 'Jihun Choi',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                  text:
                      'This is a very long caption, I wonder what will happen when it reaches the end of the screen',
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
