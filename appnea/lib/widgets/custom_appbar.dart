import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {

  const CustomAppBar({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff274690),
        child: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(children: [
              const Expanded(
                  child: Text('Appnea', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic))),
              IconButton(
                  onPressed: () {context.go('/');}, icon: const Icon(Icons.home_rounded , color: Color(0xff000000))),
            ]),
          ),
        ));
  }
}
