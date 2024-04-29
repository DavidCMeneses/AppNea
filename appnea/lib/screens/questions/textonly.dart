import 'package:appnea/globals.dart';
import 'package:appnea/widgets/alert_nextq.dart';
import 'package:appnea/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QuestionPage extends StatelessWidget {
  final String questNum;
  final String questText;
  final String questTitle;
  final List<String> entries;
  final List<int> answerValues;
  final String back;
  final String next;
  final String infopage;
  final List<String> skipQuest;

  const QuestionPage(
      {super.key,
      required this.questNum,
      required this.questText,
      required this.entries,
      required this.answerValues,
      required this.back,
      required this.next,
      this.infopage = '/',
      this.questTitle = '',
      this.skipQuest = const []});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 241, 239),
        scrolledUnderElevation : 0,
        flexibleSpace: CustomAppBar(infoPage: infopage,),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: Text(questTitle + 'Pregunta #' + questNum,
                style: TextStyle(fontSize: qtextsize, fontWeight: FontWeight.bold, color: negro),
                textAlign: TextAlign.center),
        )
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(questText,
                  style: TextStyle(fontSize: qtextsize, color: negro),
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
                          backgroundColor: gris_1 ),
                      onPressed: () => {
                            testlist[int.parse(questNum) - 1] = '${answerValues[index]}'
                          },
                      child: Text(
                        entries[index],
                        style: TextStyle(
                            color: negro),
                      )),
                ));
              },
              separatorBuilder: (BuildContext context, int index) =>
                  Divider(
                color: blanco
              ), //Colocar color del fondo de la app
            ),
          ]),
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

                    if(testlist[int.parse(questNum) - 1] == '@Null'){
                      showAlertDialogQuest(context);
                    }else{
                      if(skipQuest.length > 1){
                        if(testlist[int.parse(questNum) - 1] == skipQuest[0]){
                          for(var i=0; i<int.parse(skipQuest[3]); i++){
                            testlist[int.parse(questNum) + i] = skipQuest[2];
                          }
                          print(testlist);
                          context.go(skipQuest[1]);
                        }else{
                          print(testlist);
                          context.go(next);
                        }
                      }else{
                        print(testlist);
                        context.go(next);
                      }

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
