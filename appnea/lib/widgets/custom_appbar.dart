import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  final String infoPage;

  const CustomAppBar(
      {super.key,
        this.infoPage = '/'
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
                  onPressed: () {context.push(infoPage);}, icon: const Icon(Icons.info , color: Color(0xff000000))),
            ]),
          ),
        ));
  }
}
