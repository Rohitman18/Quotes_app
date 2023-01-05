import 'package:flutter/material.dart';

class WisdomExample extends StatefulWidget {
  const WisdomExample({Key? key}) : super(key: key);

  @override
  State<WisdomExample> createState() => _WisdomExampleState();
}

class _WisdomExampleState extends State<WisdomExample> {
  int index = 0;
  List quotes = [
    "I must not fear. Fear is the mind-killer. Fear is the little-death that brings total obliteration.",
    "Attitude is a choice. Happiness is a choice. Optimism is a choice. Kindness is a choice. Giving is a choice. Respect is a choice. Whatever choice you make makes you. Choose wisely.",
    "Don't be pushed around by the fears in your mind. Be led by the dreams in your heart.",
    "The battles that count aren't the ones for gold medals. The struggles within yourself—the invisible, inevitable battles inside all of us—that's where it's at.",
    "Someone will declare, “I am the leader!” and expect everyone to get in line and follow him or her to the gates of heaven or hell. My experience is that it doesn’t happen that way. Others follow you based on the quality of your actions rather than the magnitude of your declarations.",
    "Develop success from failures. Discouragement and failure are two of the surest stepping stones to success.",
    "Relentlessly prune bullshit, don't wait to do things that matter, and savor the time you have. That's what you do when life is short.",
    "You can be the ripest, juiciest peach in the world, and there's still going to be somebody who hates peaches.",
    "Nothing in the world can take the place of Persistence. Talent will not; nothing is more common than unsuccessful men with talent. Genius will not; unrewarded genius is almost a proverb. Education will not; the world is full of educated derelicts. The slogan 'Press On' has solved and always will solve the problems of the human race.",
    "The only way of discovering the limits of the possible is to venture a little way past them into the impossible.",
    "Worry is a misuse of imagination.",
    "Courage is the most important of all the virtues because without courage, you can't practice any other virtue consistently.",
    "The reason we struggle with insecurity is because we compare our behind-the-scenes with everyone else’s highlight reel.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.deepOrange.shade400,
          title: const Text("Quotes App"),
        ),

        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
              child: Center(
                child: Container(
                  width: 370,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Center(
                    child: Text(quotes[index % quotes.length],
                        style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600,
                            fontSize: 21,
                            fontStyle: FontStyle.italic
                        )),
                  ),
                ),
              ),
            ),
            const Divider(
              thickness: 0.2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: TextButton.icon(
                    onPressed: _showQuotes,
                    icon: const Icon(Icons.wb_sunny_outlined),
                    label: const Text(
                      "Inspire me",
                      style: TextStyle(
                          color: Colors.white, backgroundColor: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic),
                    )),
              ),
            ),
            const Spacer()
          ]),
        ));
  }

  void _showQuotes() {
    setState(() {
      index += 1;
    });
  }
}