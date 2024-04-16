import 'package:appnea/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../globals.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 241, 239),
        flexibleSpace: const CustomAppBar(infoPage: '/test/info/0', house: false,),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              height: 400,
              child: const Image(
                  image: ExactAssetImage('lib/images/logo_blue.png')),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width - 50,
              child: FilledButton(
                style: FilledButton.styleFrom(
                    backgroundColor: gris_2 ),
                onPressed: () {
                  context.go('/test/1');
                  testlist = List.generate(26, (index) => '@Null');
                  imc = 'Aún no calculado';
                },
                child: Text(
                  'Iniciar test',
                    style: TextStyle(
                        fontSize: 20,
                        color: blanco)
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
          ],
        ),
      ),
    );
  }
}
