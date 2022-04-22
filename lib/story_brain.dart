import 'story.dart';

class StoryBrain {
  List<Story> _storyData = [
    Story(
        storyTitle:
            'It is your first day at your new school and you are nervous about what is going to happen to you. You\'ve never studied magic, you didn\'t even know it was real. Looking down at your stack of books you pull one out and flick through the pages and decide to see what you can do.',
        choice1: 'Read out a spell and see what happens.',
        choice2:
            'I better not read anything out, I don\'t know what I\'m doing.'),
    Story(
        storyTitle:
            'Are you sure? It\'s just some words, they wont hurt you...maybe. Do you really believe in magic anyway? What harm could it do?',
        choice1: 'Fine, I\'ll read the spell.',
        choice2:
            'No, I really shouldn\'t. What is this chapter called anyway?'),
    Story(
        storyTitle:
            'The walls start to shake, the furniture in your room rumbles across the floor and the room starts to get hotter. What is going on? Magic IS real and I will be the best mage out there.',
        choice1: 'Keep reading out the spell.',
        choice2: 'This is weird and scary, I better stop.'),
    Story(
        storyTitle:
            'How to create a firebomb. Caution! Very deadly. Do not read in a small room on your own. Lucky you.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Probably the best choice, you really don\'t know what you are doing and this could do anything.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'Fire starts to form across the walls and wrap around the room. You keep reading out the spell while the flames start to snake across floors in front of you. The flames start to coil around itself and form into a ball. You reach the end of the words, the flames almost solidify and hover in front of you. Staring at the beauty of it you reach out and as your fingers caress the flames, it explodes. Maybe you should have waited for a mentor?',
        choice1: 'Restart',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

  void nextStory(int choiceNumber) {
    if (_storyNumber == 0 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 0 && choiceNumber == 2) {
      _storyNumber = 1;
    } else if (_storyNumber == 1 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 1 && choiceNumber == 2) {
      _storyNumber = 3;
    } else if (_storyNumber == 2 && choiceNumber == 1) {
      _storyNumber = 5;
    } else if (_storyNumber == 2 && choiceNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }
}
