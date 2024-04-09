import 'package:appnea/globals.dart';
import 'package:appnea/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class ImagePage extends StatelessWidget {
  final String questNum;
  final String questText;
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
    this.infopage = '/'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:  const Color.fromARGB(255, 238, 241, 239),
        flexibleSpace: const CustomAppBar(),),
      //appBar: AppBar(title: Text("Pregunta #$questNum"),
      //),
      body: ListView(
            children:  [
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(questText, style: const TextStyle(fontSize: qtextsize), textAlign: TextAlign.center),),
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
                      testlist.insert(int.parse(questNum) - 1,'${answerValues[index]}')
                    }
                  )),
                        Text(legends[index], style: const TextStyle(backgroundColor: Colors.blue)),]);
                },
                //separatorBuilder: (BuildContext context, int index) => const Divider(color: Colors.white,), //Colocar color del fondo de la app
              ),
        
            ]
        ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: BottomAppBar(
          color:  const Color.fromARGB(255, 238, 241, 239),
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(children: [
              FloatingActionButton(
                heroTag: "Backward",
                backgroundColor: const Color(0xffa9b4c2),
                onPressed: () {
                  context.go(back);// Add your onPressed code here!
                },
                shape: const CircleBorder(),
                child: const Center(child: Icon(Icons.arrow_back_ios_rounded, color: Color(0xff000000))),

              ),
              Expanded(child: Container()),
              FloatingActionButton(
                heroTag: "Forward",
                backgroundColor: const Color(0xffa9b4c2),
                onPressed: () {
                  context.go(next);// Add your onPressed code here!
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