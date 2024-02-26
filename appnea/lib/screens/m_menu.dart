import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Appnea'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              '(Sample Logo)',
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              height: 200,
              child: const Image(
                  image: ExactAssetImage('lib/images/sample_logo.jpg')),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width - 50,
              child: FilledButton(
                onPressed: () {
                  context.go('/test/1');
                },
                child: const Text(
                  'Continuar',
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width - 50,
              child: FilledButton(
                onPressed: () {context.go('/home');},
                child: const Text(
                  'Info',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
