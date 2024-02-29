import 'package:first_app/Exercice.dart';
import 'package:first_app/comon/Constants.dart';
import 'package:first_app/components/MainSection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/dracula.dart';

void main(List<String> args) {
  runApp(FaresApp(k: Key("fares")));
}

class FaresApp extends StatelessWidget {
  const FaresApp({required Key k}) : super(key: k);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Exercice currentExercice = Constants.exercices[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mohammed Fares')),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/ofppt.png'),
                  radius: 50,
                  ),
              ) 
            ),
            ...Constants.exercices.asMap().entries.map((e) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListTile(
                        leading: Text(
                          '${e.key + 1} - ',
                          style:
                              TextStyle(fontSize: 23.0, color: Colors.redAccent),
                        ),
                        onTap: (){
                          setState(() {
                            currentExercice = e.value;
                          });
                        },
                        title: Text(e.value.title,
                            style:
                                TextStyle(color: Colors.black, fontSize: 15.0))),
                    Divider(height: 2, color: Colors.black54, thickness: 2)
                  ],
                ),
              );
            })
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: MainSection(exercice: currentExercice),
      ),
    );
  }
}

class CodeSnippet extends StatelessWidget {
  final String code;

  const CodeSnippet({Key? key, required this.code}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shadowColor: Colors.red,
        elevation: 6.0,
        child: HighlightView(
          code,
          language: 'dart',
          theme: draculaTheme,
          padding: const EdgeInsets.all(25),
          textStyle: TextStyle(fontSize: 14.0),
        ),
      ),
    );
  }
}
