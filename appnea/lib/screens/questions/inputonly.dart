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
          backgroundColor: blanco,
          scrolledUnderElevation: 0,
          flexibleSpace: CustomAppBar(
            infoPage: infopage,
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: Text(questTitle + 'Pregunta #' + questNum,
                style: TextStyle(
                    fontSize: qtextsize, fontWeight: FontWeight.bold, color: negro),
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
                  style: TextStyle(fontSize: qtextsize, color: negro),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(padding: EdgeInsets.all(20)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextFormField(
                  validator: (value) {
                    //Se pide int y no es int
                    if (inType == 'Int' && !isNumericInt(value ?? '')) {
                      return 'Porfavor escriba un número válido Ej: 54';
                    } else if (inType == 'Float' &&
                        !isNumericFloat(value ?? '')) {
                      return 'Porfavor escriba un número válido Ej: 1.86';
                    }
                     if (value == null || value.isEmpty) {
                      return 'Porfavor escriba un texto válido';
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
          color: blanco,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                FloatingActionButton(
                  heroTag: "Backward",
                  backgroundColor: gris_2,
                  onPressed: () {
                    context.go(back); // Add your onPressed code here!
                  },
                  shape: const CircleBorder(),
                  child: Center(
                      child: Icon(Icons.arrow_back_ios_rounded,
                          color: negro)),
                ),
                Expanded(child: Container()),
                FloatingActionButton(
                  heroTag: "Forward",
                  backgroundColor: gris_2,
                  onPressed: () {
                    print(testlist);
                    if (_formKey.currentState!.validate()) {
                      context.go(next);
                    }
                  },
                  shape: const CircleBorder(),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: negro,
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
