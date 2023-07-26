class Story {
  final String _storyTitle;
  final String _choice1;
  final String _choice2;
  final int _choice1Destination;
  final int _choice2Destination;

  Story({String storyTitle = '', String choice1 = '', String choice2 = '', int choice1Destination = 0, int choice2Destination = 0})
    : _storyTitle = storyTitle,
      _choice1 = choice1,
      _choice2 = choice2,
      _choice1Destination = choice1Destination,
      _choice2Destination = choice2Destination;

  String getStory() {
    return _storyTitle;
  }

  String getChoice1() {
    return _choice1;
  }

  String getChoice2() {
    return _choice2;
  }

  int getChoice1Destination() {
    return _choice1Destination;
  }

  int getChoice2Destination() {
    return _choice2Destination;
  }
}