import 'package:flutter/material.dart';
import 'package:destini_app/view_models/story_view_model.dart';

void main() {
  runApp(const DestiniApp());
}

class DestiniApp extends StatelessWidget {
  const DestiniApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  StoryViewModel storyViewModel = StoryViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destini'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Story
            Expanded(
              flex: 12,
              child: Center(
                child: Text(
                  storyViewModel.storyTitle,
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
              ),
            ),
            // Choice 1
            Expanded(
              flex: 2,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    storyViewModel.nextStory(storyViewModel.getCurrentStory().getChoice1Destination());
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: Text(
                  storyViewModel.getCurrentStory().getChoice1(),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            // Choice 2
            Expanded(
              flex: 2,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    storyViewModel.nextStory(storyViewModel.getCurrentStory().getChoice2Destination());
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: Text(
                  storyViewModel.getCurrentStory().getChoice2(),
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



