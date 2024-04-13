import 'package:appnea/globals.dart';
import 'package:appnea/widgets/alert_nextq.dart';
import 'package:appnea/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:math';


class CalculatorPage extends StatefulWidget {
  final String questNum;
  final String questText;
  final String questTitle;
  final String back;
  final String next;
  final String infopage;

  const CalculatorPage(
      {super.key,
        required this.questNum,
        required this.questText,
        required this.back,
        required this.next,
        this.infopage = '/',
        this.questTitle = '',
      });

  @override
  State<CalculatorPage> createState() => _CalculatorState();
}

class _CalculatorState extends State<CalculatorPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 238, 241, 239),
          scrolledUnderElevation : 0,
          flexibleSpace: CustomAppBar(infoPage: widget.infopage,),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(30),
            child: Text(widget.questTitle + 'Pregunta #' + widget.questNum,
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
              child: Text(widget.questText,
                  style: TextStyle(fontSize: 25, color: negro),
                  textAlign: TextAlign.center),
            ),
            const Padding(padding: EdgeInsets.all(20)),

            Text(imc,
              style: TextStyle(fontSize: 20, color: negro),
              textAlign: TextAlign.center,),
            const Padding(padding: EdgeInsets.all(20)),
            Center(child:
            SizedBox(
              width: 320,
              height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: gris_1 ),
                onPressed: (){
                  setState(() {
                    imc =  (double.parse(testlist[4])/pow(double.parse(testlist[3]),2)).toStringAsFixed(2);
                    testlist[int.parse(widget.questNum) - 1] = imc;
                  });
                },
                child: Text('Presione para calcular IMC',
                  style: TextStyle(color: negro,))
            ),
            )
            )
          ]
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
                    context.go(widget.back); // Add your onPressed code here!
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
                    if(testlist[int.parse(widget.questNum) - 1] == '@Null'){
                      showAlertDialogQuest(context);
                    }else{
                      print(testlist);
                      context.go(widget.next);
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
