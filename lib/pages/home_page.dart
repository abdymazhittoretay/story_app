import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<List<String>> stories = [
    [
      "The Tortoise and the Hare",
      "Once upon a time, a boastful hare challenged a slow-moving tortoise to a race, confident he would win effortlessly. As the race began, the hare sped ahead, leaving the tortoise far behind. Feeling smug, he decided to take a nap midway. Meanwhile, the tortoise kept moving steadily, never stopping to rest. By the time the hare woke up, he realized the tortoise was near the finish line. Despite his speed, the hare couldn’t catch up, and the tortoise won the race."
    ],
    [
      "The Boy Who Cried Wolf",
      "In a small village, a mischievous shepherd boy grew bored watching his sheep. To amuse himself, he cried, “Wolf! Wolf!” The villagers rushed to his aid, only to find there was no wolf. The boy laughed at their frustration. A few days later, he repeated the prank, and the villagers fell for it again. Eventually, a real wolf appeared, and when the boy cried for help, no one believed him. The wolf attacked the flock, leaving the boy regretful for his lies."
    ],
    [
      "The Ant and the Grasshopper",
      "In a sunny meadow, an industrious ant worked tirelessly to store food for the winter. Meanwhile, a carefree grasshopper sang and danced, mocking the ant for wasting such beautiful weather on work. When winter arrived, the grasshopper found himself hungry and cold with no food to eat. He went to the ant’s home to ask for help, but the ant reminded him of his laziness during the summer. The grasshopper learned too late the value of preparation."
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("Stories"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: stories.length,
          itemBuilder: (context, index) {
            final List<String> story = stories[index];
            return Container(
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(10.0)),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      story[0],
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            );
          }),
    );
  }
}
