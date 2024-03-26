import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  final String infopage;

  const CustomAppBar(
      {super.key,
        this.infopage = '/'
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
                  onPressed: () {context.go('/');}, icon: const Icon(Icons.home_rounded , color: Color(0xff000000))),
              const Expanded(
                  child: Text('Appnea', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic))),
              IconButton(
                  onPressed: () {context.go(infopage);}, icon: const Icon(Icons.info , color: Color(0xff000000))),
            ]),
          ),
        ));
  }
}
