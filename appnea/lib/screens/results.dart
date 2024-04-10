import 'package:appnea/globals.dart';
import 'package:appnea/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String resultado;
  final String cuerpo;


  const ResultsPage({super.key,
    required this.resultado,
    required this.cuerpo,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation : 0,
        flexibleSpace: const CustomAppBar(),
        backgroundColor: const Color.fromARGB(255, 238, 241, 239),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(30),
            child: Text('Valoración de riesgo AOS',
                style: TextStyle(fontSize: qtextsize, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          )
      ),
      body: SingleChildScrollView(child: Center(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  shape: BoxShape.circle,
                  // You can use like this way or like the below line
                  //borderRadius: new BorderRadius.circular(30.0),
                  color: Colors.amber,
                ),
                child: Text('Riesgo $resultado')
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Padding(padding: const EdgeInsets.all(10),
                child: Text(cuerpo, style: const TextStyle(fontSize: 18.0)),)
            ],
          )
      ),
      ),
    );
  }
}