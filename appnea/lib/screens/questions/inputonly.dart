import 'package:appnea/globals.dart';
import 'package:appnea/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InputPage extends StatelessWidget {
  final String questNum;
  final String questText;
  final String inType;
  final String back;
  final String next;
  final String infopage;
  final String sampleText;

  const InputPage(
      {super.key,
      required this.questNum,
      required this.questText,
      required this.inType,
      required this.back,
      required this.next,
      this.infopage = '/',
      this.sampleText = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 241, 239),
        flexibleSpace: const CustomAppBar(),
      ),
      //appBar: AppBar(title: Text("Pregunta #$questNum"),
      //),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                questText,
                style: const TextStyle(fontSize: qtextsize),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(padding: EdgeInsets.all(20)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: sampleText
                ),
                onFieldSubmitted: (String value) async {
                  try {
                    if (inType == 'Int') {
                      testlist.insert(
                          int.parse(questNum) - 1, int.parse(value).toString());
                    } else if (inType == 'Float') {
                      testlist.insert(int.parse(questNum) - 1,
                          double.parse(value).toString());
                    } else {
                      testlist.insert(int.parse(questNum) - 1, value);
                    }
                  } catch (value) {}
                },
              ),
            )
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
