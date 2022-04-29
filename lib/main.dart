import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dollhouse.dart';

void main() {
  runApp(Destini());
}

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

DollHouse doll = DollHouse();

String picture = 'https://images.unsplash.com/photo-1519892338195-90abfe1f6984?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80';

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //TODO: Step 1 - Add background.png to this Container as a background image.
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(picture),
            fit: BoxFit.cover,
            ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    //TODO: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                     doll.getStory(),
                    style: GoogleFonts.creepster(fontSize: 30, color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                   setState(() {
                     picture =  doll.setpicture();
                     doll.nextStory(1);
                
                    });
                    //Choice 1 made by user.
                    //TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                  },
                  color: Colors.red,
                  child: Text(
                    //TODO: Step 13 - Use the storyBrain to get the text for choice 1.
                    doll.getChoice1(),
                   style: GoogleFonts.creepster(fontSize: 30),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                  child: Visibility(
                  visible: doll.buttonShouldBeVisible(),
                //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this FlatButton.
                //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                     picture =  doll.setpicture();
                     doll.nextStory(2);
                     
                    });
                    //Choice 2 made by user.
                    //TODO: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                  },
                  color: Colors.blue,
                  child: Text(
                    //TODO: Step 14 - Use the storyBrain to get the text for choice 2.
                    doll.getChoice2(),
                     style: GoogleFonts.creepster(fontSize: 30),
                  ),
                ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



