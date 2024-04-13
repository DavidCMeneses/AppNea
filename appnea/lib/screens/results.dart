import 'dart:typed_data';

import 'package:appnea/globals.dart';
import 'package:appnea/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

Color getColor(String resultado){
  if(resultado == 'ALTO'){
    return const Color(0xff9E575A);
  }else if(resultado == 'MEDIO'){
    return const Color(0xffE68D4C);
  }else{
    return const Color(0xff9CCF26);
  }
}

class ResultsPage extends StatelessWidget {
  final String resultado;
  final String cuerpo;


  ResultsPage({super.key,
    required this.resultado,
    required this.cuerpo,
  });

  final ScreenshotController screenshotController = ScreenshotController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation : 0,
        flexibleSpace: const CustomAppBar(),
        backgroundColor: blanco,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: Text('Valoración de riesgo AOS',
                style: TextStyle(fontSize: qtextsize, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          )
      ),
      body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 10,
                    color: getColor(resultado)
                  ),
                  shape: BoxShape.circle,
                  // You can use like this way or like the below line
                  //borderRadius: new BorderRadius.circular(30.0),
                  color: blanco,
                ),
                child: Center(
                  child:Text('Riesgo $resultado',
                    style: const TextStyle(fontSize: 25),),
                )
              ),
              const Padding(padding: EdgeInsets.all(20)),
              Padding(padding: const EdgeInsets.all(10),
                child: Text(cuerpo, style: const TextStyle(fontSize: 18.0),  textAlign: TextAlign.center,),)
            ],
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
                Expanded(child: Container()),
                FloatingActionButton(
                  heroTag: "Forward",
                  backgroundColor: gris_2,
                  onPressed: () async {
                    final image = await screenshotController.captureFromWidget(
                        Scaffold());
                    Share.shareXFiles([XFile.fromData(image, mimeType: "png")]);
                    },
                  shape: const CircleBorder(),
                  child: Icon(
                    Icons.mobile_screen_share_rounded,
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