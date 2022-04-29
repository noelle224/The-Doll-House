import 'story.dart';

class DollHouse {
//TODO: Step 7 - Uncomment the lines below to include storyData as a private property in StoryBrain. Hint: You might need to change something in story.dart to make this work.
  List<Story> _storyData = [
     
     Story(
        storyTitle:
            'The Doll House',
        choice1: 'Enter the Doll House', 
        picture: 'https://images.unsplash.com/photo-1519892338195-90abfe1f6984?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80',   
        choice2: 'Run away'),
     Story(
        storyTitle:
            'you open the door and you find a box lying on the ground, but you don\'t have the keys, so you start looking for the keys, you have a left and a right door',
        choice1: 'Open the left door',
        picture: 'https://images.unsplash.com/photo-1572297898720-33256db5a109?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        choice2: 'Open the right door.'),

        Story(
        storyTitle:
            'you open the left door , at first you see an empty room and then you hear weird voices, and to your surprise , a bloody knife out of no-where has appeared',
        choice1: 'you go inside the room and pick up the knife',
        picture: 'https://images.unsplash.com/photo-1483982258113-b72862e6cff6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        choice2: 'you shut the door and you open the right door.'),

Story(
        storyTitle:
            'you open the right door and you see a woman, wearing a red gown, like a scary doll. She then looks at your side and starts to run towards you',
        choice1: 'you stand there and she stabs you.',
        picture: 'https://images.unsplash.com/photo-1581411477128-920ea818c187?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80',
        choice2: 'you slam the door shut and open the left door'),

Story(
        storyTitle:
            'you picked up the knife, you wipe the blood from the knife and you Keep it as your weapon',
        choice1: 'you go downstairs, the noises grow louder',
        picture: 'https://images.unsplash.com/photo-1511406361295-0a1ff814c0ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        choice2: 'you sit in the empty room '),


Story(
        storyTitle:
            'You see a woman wearing a red gown , sitting on a chair, waiting for you, downstairs, she turns towards you and runs to you ',
        choice1: 'you have the knife, so you stab her ',
        picture: 'https://images.unsplash.com/photo-1584369661395-5cfea7014f9d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        choice2: 'she drags you to the river to drown you'),

Story(
        storyTitle:
            'The woman is dead, and you see a ray of light from behind',
        choice1: 'you run towards the light, to make your escape',
        picture: 'https://images.unsplash.com/photo-1628178629078-4999185ce38e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
        choice2: 'you run back upstairs'),

Story(
        storyTitle:
            'You run back upstairs and someone grabs you from behind',
        choice1: 'pull out the weapon again to save yourself',
        picture: 'https://images.unsplash.com/photo-1601513445506-2ab0d4fb4229?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        choice2: 'you give up'),

Story(
        storyTitle:
            'You take out the knife and stab the person, without even looking at him',
        choice1: 'Run out of the house to your escape',
        picture: 'https://images.unsplash.com/photo-1604005950757-5d2c66050f62?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
        choice2: 'find more ghosts to kill them'),

        Story(
        storyTitle:
            'Do you want to go back again?',
        choice1: 'Restart',
        picture: 'https://images.unsplash.com/photo-1467991521834-fb8e202c7074?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        choice2: ''),



    
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

  String setpicture() {
    return _storyData[_storyNumber].picture;
  }

  int _storyNumber = 0;

   void nextStory(int choiceNumber) {
    //TODO: Step 21 - Using the story plan, update nextStory to change the storyNumber depending on the choice made by the user.
    //When user is on story0 and they chose choice1, the story should progress to story2.
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 9;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 4;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 3;
      } else if (choiceNumber == 1 && _storyNumber == 3) {
      _storyNumber = 9;
      } else if (choiceNumber == 2 && _storyNumber == 3) {
      _storyNumber = 2;
      } else if (choiceNumber == 1 && _storyNumber == 4) {
      _storyNumber = 5;
      } else if (choiceNumber == 2 && _storyNumber == 4) {
      _storyNumber = 9;
      } else if (choiceNumber == 1 && _storyNumber == 5) {
      _storyNumber = 6;
      } else if (choiceNumber == 2 && _storyNumber == 5) {
      _storyNumber = 9;
      } else if (choiceNumber == 1 && _storyNumber == 6) {
      _storyNumber = 9;
      } else if (choiceNumber == 2 && _storyNumber == 6) {
      _storyNumber = 7;
      } else if (choiceNumber == 1 && _storyNumber == 7) {
      _storyNumber = 8;
      } else if (choiceNumber == 2 && _storyNumber == 7) {
      _storyNumber = 9;
      } else if (choiceNumber == 1 && _storyNumber == 8) {
      _storyNumber = 9;
      } else if (choiceNumber == 2 && _storyNumber == 8) {
      _storyNumber = 9;
      } else if (choiceNumber == 1 && _storyNumber == 9) {
      _storyNumber = 0;
    }
    //TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
   
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNumber == 9) {
      return false;
    } else {
      return true;
    }
  }
}

