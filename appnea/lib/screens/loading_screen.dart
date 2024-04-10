import 'dart:async';
import 'package:appnea/globals.dart';
import 'package:appnea/screens/results.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'dart:math';

String resultCheck() {
  var resultList = [0,0,0];
  var tempBerlinList = [0,0,0];
  var count = 0;

  //Berlin
  for(var i = 16; i<21; i++){
    count = count + int.parse(testlist[i]);
  }
  if(count > 1){
    tempBerlinList[0] = 1;
  }

  count = 0;

  for(var i = 21; i<25; i++){
    count = count + int.parse(testlist[i]);
  }
  if(count > 1){
    tempBerlinList[1] = 1;
  }
  if((int.parse(testlist[25]) > 1) || (double.parse(testlist[5]) >= 30)){
    tempBerlinList[2] = 1;
  }

  if(tempBerlinList.sum > 1){
    resultList[0] = 2;
  }
//Friedman

count = 0;
  if(double.parse(testlist[5]) > 40){
    count = count + 4;
  } else if (double.parse(testlist[5]) >= 30){
    count = count + 3;
  } else if (double.parse(testlist[5]) >= 25){
    count = count + 2;
  } else if (double.parse(testlist[5]) >= 20){
    count = count + 1;
  }

  count = count + int.parse(testlist[13]) + int.parse(testlist[14]);
  if (count >= 8){
    resultList[1] = 2;
  }  else if (count > 4){
    resultList[1] = 1;
  }

  // Normal
  count = 0;

  if(int.parse(testlist[1]) >= 50){
    count = count + 2;
    testlist[1] = '2';
  }else if(int.parse(testlist[1]) >= 30){
    count = count + 1;
    testlist[1] = '1';
  }

  count = count + int.parse(testlist[2]);

  if(double.parse(testlist[5]) >= 30){
    count = count + 2;
    testlist[5] = '2';
  }else if(double.parse(testlist[5]) >= 25) {
    count = count + 1;
    testlist[5] = '1';
  }
  
  for(var i = 6; i<13; i++){
    count = count + int.parse(testlist[i]);
  }

  if((int.parse(testlist[2]) == 2) && (int.parse(testlist[1]) == 2)){
    count = count + 1;
  }

  if(count >= 7){
    resultList[2] = 2;
  }else if(count >= 5){
    resultList[2] = 1;
  }

  if(resultList[0] > 1){
    return 'ALTO';
  }else if(resultList.reduce(max) == 2){
    return 'ALTO';
  }else if(resultList.reduce(max) == 1){
    return 'MEDIO';
  }else{
    return 'BAJO';
  }
}

String bodyBuilder(){
  var riesgo = resultCheck();
  var cuerpo = 'El/La paciente ${testlist[0]} presenta un riesgo $riesgo porque se evidenciaron los siguientes factores de riesgo:\v';


  if(int.parse(testlist[1]) >  0){
    cuerpo = '$cuerpo \t -Edad.\v';
  }
  if(int.parse(testlist[2]) >  1){
    cuerpo = '$cuerpo \t -Sexo.\v';
  }
  if(int.parse(testlist[5]) >  0){
    cuerpo = '$cuerpo \t -IMC.\v';
  }
  if(int.parse(testlist[6]) >  0){
    cuerpo = '$cuerpo \t -Fumador.\v';
  }
  if(int.parse(testlist[8]) >  0){
    cuerpo = '$cuerpo \t -Alcohol.\v';
  }
  if(int.parse(testlist[9]) >  0){
    cuerpo = '$cuerpo \t -Respirador oral.\v';
  }
  if(int.parse(testlist[10]) >  0){
    cuerpo = '$cuerpo \t -Bruxismo.\v';
  }
  if(int.parse(testlist[11]) >  0){
    cuerpo = '$cuerpo \t -Edéntulo total.\v';
  }
  if(int.parse(testlist[12]) >  0){
    cuerpo = '$cuerpo \t -Retrognatismo o micrognatismo mandibular.\v';
  }

  return cuerpo;
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
        resultado: resultCheck(),
        cuerpo: bodyBuilder(),
      )));
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 50,
            height: 200,
            child: const Image(
                image: ExactAssetImage('lib/images/sample_logo.jpg')),
          ),
        ),
      ),
    );
  }
}