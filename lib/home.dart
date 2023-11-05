import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  const Wisdom({Key? key}) : super(key: key);

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {

  int _index = 0;

  List quotes = [
  "A rose by any other name would smell as sweet.	William Shakespeare	English",
  "All that glitters is not gold.	William Shakespeare	English",
  "All the world’s a stage, and all the men and women merely players.	William Shakespeare	English",
  "Ask not what your country can do for you; ask what you can do for your country.	John Kennedy	English",
  "Ask, and it shall be given you; seek, and you shall find.	the Bible	Greek",
  "Eighty percent of success is showing up.	Woody Allen	English",
  "Elementary, my dear Watson.	Sherlock Holmes (character)	English",
  "For those to whom much is given, much is required.	the Bible	Greek",
  "Frankly, my dear, I don't give a damn.	Rhett Butler (character)	English",
  "Genius is one percent inspiration and ninety-nine percent perspiration.	Thomas Edison	English",
  "Go ahead, make my day.	Harry Callahan (character)	English",
  "He travels the fastest who travels alone.	Rudyard Kipling	English",
  "Hell has no fury like a woman scorned.	William Congreve	English",
    "Honesty is best policy.",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quotes App"),
        elevation: 0.0,
        backgroundColor: Colors.green,
      ),


      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                  width: 350,
                  height: 200,
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Center(child: Text(quotes[_index % quotes.length],
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontStyle: FontStyle.italic,
                    fontSize: 16.6
                  ),))),
            ),

            Divider(thickness: 1.3,),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: TextButton.icon(
                  onPressed: _ShowQuote,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.greenAccent.shade700,
                    alignment: Alignment.center,

                  ),
                  icon: Icon(Icons.wb_sunny),
                  label: Text("Inspire me!!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.8,
                  ),),
              ),
            ),

            Spacer(),

          ],
        ),
      ),
    );
  }

  void _ShowQuote() {
    //increment by 1 every quote
    setState(() {
      _index+=1;
    });

  }
}
