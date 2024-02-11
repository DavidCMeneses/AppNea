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

  const InputPage(
      {super.key,
      required this.questNum,
      required this.questText,
      required this.inType,
      required this.back,
      required this.next}
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const CustomAppBar(),
      ),
      //appBar: AppBar(title: Text("Pregunta #$questNum"),
      //),
      body: Column(children: [
        Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(questText),),
        const Padding(padding: EdgeInsets.all(20)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            onFieldSubmitted: (String value) async {
              try {
                if(inType == 'Int'){
                  testlist.insert(int.parse(questNum) - 1, int.parse(value).toString());
                }
                else if (inType == 'Float') {
                  testlist.insert(int.parse(questNum) - 1, double.parse(value).toString());
                } else {
                  testlist.insert(int.parse(questNum) - 1, value);

                }
              } catch (value) {}
            }
            ,
          ),
        )
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: BottomAppBar(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                FloatingActionButton(
                  heroTag: "Backward",
                  backgroundColor: const Color(0xffa1e8af),
                  onPressed: () {
                    context.go(back);// Add your onPressed code here!
                  },
                  shape: const CircleBorder(),
                  child: const Center(
                      child: Icon(Icons.arrow_back_ios_rounded,
                          color: Color(0xff000000))),
                ),
                Expanded(child: Container()),
                FloatingActionButton(
                  heroTag: "Forward",
                  backgroundColor: const Color(0xffa1e8af),
                  onPressed: () {
                    context.go(next);// Add your onPressed code here!
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
