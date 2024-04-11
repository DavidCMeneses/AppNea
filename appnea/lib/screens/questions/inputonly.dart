import 'package:appnea/globals.dart';
import 'package:appnea/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

bool isNumericFloat(String string) {
  final numericRegex = RegExp(r'^-?(([0-9]*)|(([0-9]*)(\.|\,)([0-9]*)))$');

  return numericRegex.hasMatch(string.trim());
}

bool isNumericInt(String string) {
  final numericRegex = RegExp(r'^[0-9]+$');

  return numericRegex.hasMatch(string.trim());
}

class InputPage extends StatelessWidget {
  final String questNum;
  final String questText;
  final String questTitle;
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
      this.sampleText = '',
      this.questTitle = ''});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 238, 241, 239),
          scrolledUnderElevation: 0,
          flexibleSpace: CustomAppBar(
            infoPage: infopage,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: Text(questTitle + 'Pregunta #' + questNum,
                style: const TextStyle(
                    fontSize: qtextsize, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          )),
      //appBar: AppBar(title: Text("Pregunta #$questNum"),
      //),
      body: Form(
        key: _formKey,
        child: Column(
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
                  validator: (value) {
                    print(value);
                    //Se pide int y no es int
                    if (inType == 'Int' && !isNumericInt(value ?? '')) {
                      return 'eres retrasado, es int';
                    } else if (inType == 'Float' &&
                        !isNumericFloat(value ?? '')) {
                      return 'eres retrasado, es float';
                    }
                    print(value);
                     if (value == null || value.isEmpty) {
                      return 'eres retrasado, es texto';
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: sampleText),
                  onFieldSubmitted: (String value) async {
                    try {
                      if (inType == 'Int') {
                        testlist[int.parse(questNum) - 1] =
                            int.parse(value).toString();
                      } else if (inType == 'Float') {
                        testlist[int.parse(questNum) - 1] =
                            double.parse(value.replaceAll(',', '.')).toString();
                      } else {
                        testlist[int.parse(questNum) - 1] = value;
                      }
                    } catch (value) {}
                  },
                ),
              )
            ]),
      ),
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
                    print(testlist);
                    if (_formKey.currentState!.validate()) {
                      context.go(next);
                    }
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
