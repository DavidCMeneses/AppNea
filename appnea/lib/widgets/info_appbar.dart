import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../globals.dart';

class InfoAppBar extends StatelessWidget {
  final String backPage;

  const InfoAppBar(
      {super.key,
        required this.backPage
        ,});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: azul,
        child: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              IconButton(
                  onPressed: () {context.pop();}, icon: Icon(Icons.arrow_back_ios_new_rounded , color: blanco)),
              const Expanded(
                  child: Image(image: ExactAssetImage('lib/images/mini_icon.png'),
                    height: 40,)),
              Container(width: 55, height: 0,),
            ]),
          ),
        ));
  }
}
