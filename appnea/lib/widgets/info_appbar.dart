import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfoAppBar extends StatelessWidget {
  final String backPage;

  const InfoAppBar(
      {super.key,
        required this.backPage
        ,});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff7D98A1),
        child: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              IconButton(
                  onPressed: () {context.pop();}, icon: const Icon(Icons.arrow_back_ios_new_rounded , color: Color(0xff000000))),
              const Expanded(
                  child: Text('Appnea', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic))),
            ]),
          ),
        ));
  }
}
