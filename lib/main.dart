import 'package:destini_flutter/custom_style.dart';
import 'package:destini_flutter/story_brain.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyDestini());
}

class MyDestini extends StatelessWidget {
  const MyDestini({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DestiniStory(),
    );
  }
}

StoryBrain storyBrain = StoryBrain();

class DestiniStory extends StatefulWidget {
  const DestiniStory({super.key});

  @override
  State<DestiniStory> createState() => _DestiniStoryState();
}

class _DestiniStoryState extends State<DestiniStory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 10,
                child: Center(
                  child: Text(
                    storyBrain.getStory(0),
                    style: CustomTextStyle.headOfAppText,
                  ),
                ),
              ),
              const Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: null,
                  style: CustomButtonStyle.trueButton,
                  child: Text(
                    "Tombol 1",
                    style: CustomTextStyle.buttonText,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: null,
                  style: CustomButtonStyle.falseButton,
                  child: Text("Tombol 2", style: CustomTextStyle.buttonText),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
