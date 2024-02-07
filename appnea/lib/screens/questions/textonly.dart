import 'package:appnea/globals.dart';
import 'package:appnea/widgets/custom_appbar.dart';
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
      appBar: AppBar(flexibleSpace: const CustomAppBar(),),
      //appBar: AppBar(title: Text("Pregunta #$questNum"),
      //),
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
          ),
        
        ]
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: BottomAppBar(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              FloatingActionButton(
                heroTag: "Backward",
                backgroundColor: const Color(0xffa1e8af),
                onPressed: () {
                  // Add your onPressed code here!
                },
                shape: const CircleBorder(),
                child: const Center(child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xff000000))),
                
              ),
              Expanded(child: Container()),
              FloatingActionButton(
                heroTag: "Forward",
                backgroundColor: const Color(0xffa1e8af),
                onPressed: () {
                  // Add your onPressed code here!
                },
                shape: const CircleBorder(),
                child: const Icon(Icons.arrow_forward_ios_rounded, color: Color(0xff000000),),
              ),
              ],),
          ),
        ),
      ),
    );
  }
}