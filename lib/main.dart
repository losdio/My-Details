import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'About me',
      debugShowCheckedModeBanner: false,
      home: AboutMeScreen(),
    );
  }
}

class AboutMeScreen extends StatelessWidget {
  const AboutMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> hobbies = ["Listening to music", "Gaming", "Driving"];
    const List<IconData> hobbyIcons = [
      Icons.music_note,
      Icons.gamepad,
      Icons.car_crash
    ];
    const List<String> skills = [
      "Communication",
      "Team work",
      "N word speech master"
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'About me',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.red,
                  child: Icon(
                    Icons.person,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Tareq Al-Zabin',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "4th Year Computer Science Student",
              style: TextStyle(
                fontSize: 16,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "My Hobbies",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 0,
              child: Hobbies(hobbies: hobbies, hobbyIcons: hobbyIcons),
            ),
            Text(
              "My Top 3 Skills",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              flex: 0,
              child: Skills(skills: skills),
            ),
          ],
        ),
      ),
    );
  }
}

class Hobbies extends StatelessWidget {
  final List<String> hobbies;
  final List<IconData> hobbyIcons;

  const Hobbies({
    super.key,
    required this.hobbies,
    required this.hobbyIcons,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: hobbies.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(
              bottom: 10), // add some space between containers
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 207, 207, 207), // background color
            borderRadius: BorderRadius.circular(10), // rounded corners
            boxShadow: const [],
          ),
          child: ListTile(
            title: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(hobbyIcons[index]),
                  const SizedBox(width: 10),
                  Text(hobbies[index],
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Skills extends StatelessWidget {
  final List<String> skills;

  const Skills({
    super.key,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: skills.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 207, 207, 207),
            borderRadius: BorderRadius.circular(10),
          ),
          child: ListTile(
            title: Center(
              child: Text(skills[index],
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
          ),
        );
      },
    );
  }
}
