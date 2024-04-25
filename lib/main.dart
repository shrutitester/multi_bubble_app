import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> hobbyList = [
    'Shopping',
    'Comedy',
    'Brunch',
    'Music',
    'Road Trips',
    'Tea',
    'Trivia',
    'Comedy',
    'Clubbing',
    'Drinking',
    'Wine',
    'Hiking',
    'Yoga',
    'Volleyball',
    'Craft Beer',
    'Dogs',
    'Cats',
    'Activism',
    'Vlogging',
    'Museum',
    'Dancing',
    'Running',
    'Singing',
    'Make-Up',
    'Concert',
    'Cafe',
    'Theater',
    'Baking',
    'Gardening',
    'Cooking',
    'Video Games',
    'Camping'
  ];


  List<String>? selectedHobby = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(children: hobbyList.map(
                  (hobby) {
                bool isSelected = false;
                if (selectedHobby!.contains(hobby)) {
                  isSelected = true;
                }
                return GestureDetector(
                  onTap: () {
                    if (!selectedHobby!.contains(hobby)) {
                      if (selectedHobby!.length < 5) {
                        selectedHobby!.add(hobby);
                        setState(() {});
                        print(selectedHobby);
                      }
                    } else {
                      selectedHobby!
                          .removeWhere((element) => element == hobby);
                      setState(() {});
                      print(selectedHobby);
                    }
                  },
                  child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 4),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 12),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18),
                            border: Border.all(
                                color: isSelected
                                    ? Colors.red
                                    : Colors.grey,
                                width: 2)),
                        child: Text(
                          hobby,
                          style: TextStyle(
                              color:
                              isSelected ? Colors.red : Colors.grey,
                              fontSize: 14),
                        ),
                      )),
                );
              },
            ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
