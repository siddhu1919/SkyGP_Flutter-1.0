// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skygpt/feature_box.dart';
import 'package:skygpt/palette.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 90,
          centerTitle: true,
          title: const Text(
            "S K Y G P T",
            style: TextStyle(
              fontFamily: 'Cera Pro',
              fontSize: 25,
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              size: 32,
            ),
          )),
      body: Column(
        children: [
          // Sky GPT Profile Picture
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    color: Palette.assistantCircleColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                height: 123,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/skyAssistant.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
          // Sky GPT Profile Picture

          // Greeting Text
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 30,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20).copyWith(
                  topLeft: Radius.circular(0),
                ),
                border: Border.all(
                  color: Palette.borderColor,
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Good Morning, What task can I do for you?",
                style: TextStyle(
                  fontFamily: 'Cera Pro',
                  color: Palette.whiteColor,
                  fontSize: 25,
                ),
              ),
            ),
          ), // Greeting Text

          // Suggestion  Text
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(
              top: 10,
              left: 22,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Here are few features.",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cera Pro',
                    color: Palette.whiteColor,
                    fontSize: 20),
              ),
            ),
          ),

          // Features List

          Column(
            children: [
              FeatureBox(
                color: Palette.firstSuggestionBoxColor,
                headerText: "ChatGPT ",
                descriptionText:
                    "A smarter way to stay organized and informed with chatGPT",
              ),
              FeatureBox(
                color: Palette.secondSuggestionBoxColor,
                headerText: "Dall-E ",
                descriptionText:
                    "Get inspired and stay creative with your personal assistant powered by Dall-E",
              ),
              FeatureBox(
                color: Palette.thirdSuggestionBoxColor,
                headerText: "Smart Voice Assistant",
                descriptionText:
                    "Get the best of the both worlds with a voice assistant powered by Dall-E and ChatGPT",
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Palette.firstSuggestionBoxColor,
        hoverColor: Colors.red,
        onPressed: () {},
        child: const Icon(
          Icons.mic,
          color: Colors.black,
        ),
      ),
    );
  }
}
