import 'package:appnea/globals.dart';
import 'package:appnea/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/alert_nextq.dart';


class ImagePage extends StatelessWidget {
  final String questNum;
  final String questText;
  final String questTitle;
  final List<String> entries;
  final List<String> legends;
  final List<int> answerValues;
  final String back;
  final String next;
  final String infopage;

  const ImagePage({super.key,
    required this.questNum,
    required this.questText,
    required this.entries,
    required this.legends,
    required this.answerValues,
    required this.back,
    required this.next,
    this.infopage = '/',
    this.questTitle = ''});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:  const Color.fromARGB(255, 238, 241, 239),
          scrolledUnderElevation : 0,
        flexibleSpace: CustomAppBar(infoPage: infopage,),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: Text(questTitle + 'Pregunta #' + questNum,
                style: TextStyle(fontSize: qtextsize, fontWeight: FontWeight.bold,  color: negro),
                textAlign: TextAlign.center),
          )
      ),
      body: ListView(
            children:  [
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(questText, style: TextStyle(fontSize: qtextsize, color: negro), textAlign: TextAlign.center),),
              const Padding(padding: EdgeInsets.all(20)),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: const EdgeInsets.all(20),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                      children: [Expanded(child:IconButton(
                      iconSize: 200,
                      padding: const EdgeInsets.all(0.5),
                    icon: Image(
                    image: ExactAssetImage(entries[index]),
                    color: null,
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.center,),
                      onPressed: () => {
                        testlist[int.parse(questNum) - 1] = '${answerValues[index]}'
                    }
                  )),
                        Text(legends[index], style: TextStyle(backgroundColor: gris_1, color: negro)),]);
                },
                //separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.white,), //Colocar color del fondo de la app
              ),
        
            ]
        ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: BottomAppBar(
          color: blanco,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              FloatingActionButton(
                heroTag: "Backward",
                backgroundColor: gris_2,
                onPressed: () {
                  context.go(back);// Add your onPressed code here!
                },
                shape: const CircleBorder(),
                child: Center(child: Icon(Icons.arrow_back_ios_rounded, color: negro)),

              ),
              Expanded(child: Container()),
              FloatingActionButton(
                heroTag: "Forward",
                backgroundColor: gris_2,
                onPressed: () {
                  if(testlist[int.parse(questNum) - 1] == '@Null'){
                    showAlertDialogQuest(context);
                  }else{
                    print(testlist);
                    context.go(next);
                  }
                },
                shape: const CircleBorder(),
                child: Icon(Icons.arrow_forward_ios_rounded, color: negro,),
              ),
            ],),
          ),
        ),
      ),
    );
  }
}