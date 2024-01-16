import 'package:appnea/widgets/composed_button.dart';
import 'package:appnea/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(flexibleSpace: const CustomAppBar(),),
      body: const ComposedButton(),
    );
  }
}