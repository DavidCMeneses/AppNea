import 'package:appnea/globals.dart';
import 'package:appnea/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuestionPage extends StatelessWidget {
  final String questNum;
  final String questText;
  final List<String> entries;
  final List<int> answerValues;
  final String back;
  final String next;
  final String infopage;

  const QuestionPage(
      {super.key,
      required this.questNum,
      required this.questText,
      required this.entries,
      required this.answerValues,
      required this.back,
      required this.next,
      this.infopage = '/'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 241, 239),
        flexibleSpace: CustomAppBar(infoPage: infopage,),
      ),
      //appBar: AppBar(title: Text("Pregunta #$questNum"),
      //),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(questText,
                  style: const TextStyle(fontSize: qtextsize),
                  textAlign: TextAlign.center),
            ),
            const Padding(padding: EdgeInsets.all(20)),
            ListView.separated(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: const EdgeInsets.all(20),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                    child: SizedBox(
                  width: 600,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffa9b4c2)),
                      onPressed: () => {
                            testlist.insert(int.parse(questNum) - 1,
                                '${answerValues[index]}')
                          },
                      child: Text(
                        entries[index],
                        style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0)),
                      )),
                ));
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(
                color: Colors.white,
              ), //Colocar color del fondo de la app
            ),
          ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: BottomAppBar(
          color: const Color.fromARGB(255, 238, 241, 239),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                FloatingActionButton(
                  heroTag: "Backward",
                  backgroundColor: const Color(0xffa9b4c2),
                  onPressed: () {
                    context.go(back); // Add your onPressed code here!
                  },
                  shape: const CircleBorder(),
                  child: const Center(
                      child: Icon(Icons.arrow_back_ios_rounded,
                          color: Color(0xff000000))),
                ),
                Expanded(child: Container()),
                FloatingActionButton(
                  heroTag: "Forward",
                  backgroundColor: const Color(0xffa9b4c2),
                  onPressed: () {
                    context.go(next); // Add your onPressed code here!
                  },
                  shape: const CircleBorder(),
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xff000000),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
