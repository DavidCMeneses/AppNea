import 'package:appnea/widgets/info_appbar.dart';
import 'package:flutter/material.dart';

class QuestInfo extends StatelessWidget {
  final String questPage;
  final String infoTitle;
  final String infoBody;

  const QuestInfo({super.key,
    required this.questPage,
    required this.infoTitle,
    required this.infoBody,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        flexibleSpace: InfoAppBar(backPage: questPage,),
        backgroundColor: const Color.fromARGB(255, 238, 241, 239),),
      body: SingleChildScrollView(child: Center(
          child: Column(
            children: [Text(infoTitle, style: const TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),textAlign: TextAlign.center, ),
            const Padding(padding: EdgeInsets.all(10)),
            Padding(padding: const EdgeInsets.all(10),
              child: Text(infoBody, style: const TextStyle(fontSize: 18.0)),)

          ],
          )
        ),
      ),
    );
  }
}