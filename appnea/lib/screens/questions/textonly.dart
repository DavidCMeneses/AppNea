import 'package:appnea/globals.dart';
import 'package:flutter/material.dart';


class QuestionPage extends StatelessWidget {
  final String questNum;
  final String questText;
  final List<String> entries;
  final List<int> colorCodes;
  final List<int> answerValues;

  const QuestionPage({super.key,
                required this.questNum,
                required this.questText,
                required this.entries,
                required this.colorCodes,
                required this.answerValues});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pregunta #$questNum"),
      ),
      body: Column(
        children: [Text(questText),
          const Padding(padding: EdgeInsets.all(20)),
          ListView.separated(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(20),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: TextButton(onPressed: () => {
                  testlist.add('${answerValues[index]}')
                },
                    child: Text('Entry ${entries[index]}'))),
            );
          },
            separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.white,), //Colocar color del fondo de la app
          )
        ]
      ),
    );
  }
}