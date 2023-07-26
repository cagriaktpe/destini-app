import 'package:destini_app/models/story_model.dart';

class StoryViewModel {
  List <Story> _stories = [
    // 0
    Story(
      storyTitle: 'You are on a planet full of aliens. You see two aliens fighting. One of them is your friend and the other is your enemy.',
      choice1: 'Help your friend',
      choice2: 'Help your enemy',
      choice1Destination: 1,
      choice2Destination: 2,
    ),
    // 1
    Story(
      storyTitle: 'Your friend won the fight. He is very happy and gives you a gift.',
      choice1: 'Open the gift',
      choice2: 'Do not open the gift',
      choice1Destination: 4,
      choice2Destination: 6,
    ),
    // 2
    Story(
      storyTitle: 'Your enemy won the fight. He is very happy and gives you a gift.',
      choice1: 'Open the gift',
      choice2: 'Do not open the gift',
      choice1Destination: 3,
      choice2Destination: 5,
    ),
    // 3
    Story(
      storyTitle: 'You opened the gift. It is a bomb. You died.',
      choice1: 'Restart',
      choice2: '',
    ),
    // 4
    Story(
      storyTitle: 'You opened the gift. It is a flower. You are safe.',
      choice1: 'Restart',
      choice2: '',
    ),
    // 5
    Story(
      storyTitle: 'You did not open the gift. You are safe.',
      choice1: 'Restart',
      choice2: '',
    ),
    // 6
    Story(
      storyTitle: 'You did not open the gift. Your friend killed you.',
      choice1: 'Restart',
      choice2: '',
    )
  ];

  int _storyNumber = 0;

  String get storyTitle {
    return _stories[_storyNumber].getStory();
  }

  String get choice1 {
    return _stories[_storyNumber].getChoice1();
  }

  String get choice2 {
    return _stories[_storyNumber].getChoice2();
  }

  Story getCurrentStory() {
    return _stories[_storyNumber];
  }

  void nextStory(int storyNumber) {
    _storyNumber = storyNumber;
  }
}
