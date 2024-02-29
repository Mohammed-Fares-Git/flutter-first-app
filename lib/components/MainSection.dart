import 'package:first_app/Exercice.dart';
import 'package:first_app/components/SubSection.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MainSection extends StatelessWidget {
  final Exercice exercice;

  const MainSection({required this.exercice});

  @override
  Widget build(BuildContext context) {
    var i = 1;
    return ListView(
      children: [
        ...exercice.questionSolutionPair.entries.map((e) {
          return SubSection(index: i++, title: e.key, solutions: e.value);
        }),
        TextButton(
            onPressed: () async {
              var url = Uri.https('github.com', exercice.solutionUrl);
              if (await canLaunchUrl(url))
                await launchUrl(url);
            },
            child: Text('Github.com',
                style: TextStyle(color: Colors.lightBlueAccent)))
      ],
    );
  }
}
