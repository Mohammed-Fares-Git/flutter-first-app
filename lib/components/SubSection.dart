import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/dracula.dart';

class SubSection extends StatelessWidget {
  final int index;
  final String title;
  final List<String> solutions;

  const SubSection(
      {required this.index, required this.title, required this.solutions});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('${this.index} - ${this.title}.', style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 27, 93, 29)),),
        ...solutions.asMap().entries.map((e) {
          return Center(
            child: Column(
              children: [
                if(solutions.length > 1)
                  Text('\t solution ${e.key + 1} :'),
                Card(
                  shadowColor: Colors.red,
                  elevation: 6.0,
                  child: HighlightView(
                    e.value,
                    language: 'dart',
                    theme: draculaTheme,
                    padding: const EdgeInsets.all(25),
                    textStyle: TextStyle(fontSize: 14.0),
                  ),
                )
              ],
            ),
          );
        }),
        if (solutions.isEmpty)
          Text('There are no solutions yet.',
              style: TextStyle(color: Colors.deepOrange))
      ],
    );
  }
}
