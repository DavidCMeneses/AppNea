import 'package:appnea/globals.dart';
import 'package:appnea/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class InputPage extends StatelessWidget {
  final String questNum;
  final String questText;

  const InputPage(
      {super.key,
      required this.questNum,
      required this.questText}
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
        Text(questText),
        const Padding(padding: EdgeInsets.all(20)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextFormField(
            onFieldSubmitted: (String value) async {
              try {
                int.parse(value);
              } catch (value) {
                print(value);
              }
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
                    // Add your onPressed code here!
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
                    // Add your onPressed code here!
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
