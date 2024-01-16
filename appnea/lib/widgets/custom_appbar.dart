import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromRGBO(6, 174, 3, 1),
        child: Row(children: [
          Expanded(
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_back_ios))),
          Expanded(
              child: IconButton(
                  onPressed: () {context.go('/');}, icon: const Icon(Icons.home_rounded))),
          Expanded(
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_forward_ios)))
        ]));
  }
}
