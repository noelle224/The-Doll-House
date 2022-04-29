class Story {
  //TODO: Step 3 - Create 3 properties for this class, A. storyTitle to store the story text. B. choice1 to store the text for choice 1, C. choice2 to store the text for choice 2.
  String storyTitle = 'The Doll house';
  String choice1 = 'enter';
  String choice2 = 'run';
  String picture = 'https://images.unsplash.com/photo-1519892338195-90abfe1f6984?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80';

  //TODO: Step 4 - Create a Constructor for this class to be able to initialise the properties created in step 3.
   Story({required this.storyTitle, required this.choice1, required this.choice2, required this.picture});
}