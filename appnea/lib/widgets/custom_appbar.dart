import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../globals.dart';

class CustomAppBar extends StatelessWidget {
  final String infoPage;
  final bool house;

  const CustomAppBar({
    super.key,
    this.infoPage = '/',
    this.house = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff7D98A1),
        child: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              if (house)
                IconButton(
                    onPressed: () {
                      context.go('/');
                      testlist = List.generate(26, (index) => index.toString());
                    },
                    icon: const Icon(Icons.home_rounded,
                        color: Color(0xff000000))),
              if (!house)
                Container(width: 45, height: 0,),
              const Expanded(
                  child: Text('Appnea',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic))),
              if(infoPage != '/')
              IconButton(
                  onPressed: () {
                    context.push(infoPage);
                  }, icon: const Icon(Icons.info, color: Color(0xff000000))),
              if(infoPage == '/')
                Container(width: 45, height: 0,),
            ]),
          ),
        ));
  }
}
