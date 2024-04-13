import 'package:appnea/widgets/alert_house.dart';
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
        color: azul,
        child: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              if (house)
                IconButton(
                    onPressed: () {
                      showAlertDialogHouse(context);
                    },
                    icon: Icon(Icons.home_rounded,
                        color: blanco)),
              if (!house)
                Container(width: 45, height: 0,),
              const Expanded(child: Image(image: ExactAssetImage('lib/images/mini_icon.png'),
              height: 40,)),
              //const Expanded(
                  //child: Text('Appnea',
                      //textAlign: TextAlign.center,
                      //style: TextStyle(
                          //fontSize: 25,
                          //fontWeight: FontWeight.bold,
                          //fontStyle: FontStyle.italic))),
              if(infoPage != '/')
              IconButton(
                  onPressed: () {
                    context.push(infoPage);
                  }, icon: Icon(Icons.info, color: blanco)),
              if(infoPage == '/')
                Container(width: 45, height: 0,),
            ]),
          ),
        ));
  }
}
