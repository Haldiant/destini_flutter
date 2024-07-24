import 'package:destini_flutter/custom_style.dart';
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
        child: const SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 10,
                child: Center(
                  child: Text(
                    "Cerita ditampilkan disini",
                    style: CustomTextStyle.headOfAppText,
                  ),
                ),
              ),
              Expanded(
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
              SizedBox(
                height: 20.0,
              ),
              Expanded(
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
