import 'package:flutter/material.dart';
import 'package:appnea/screens/home.dart';
import 'package:appnea/screens/questions/textonly.dart';
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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Sample image',
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 50,
              height: 200,
              child: const Image(
                  image: NetworkImage(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width - 50,
              child: FilledButton(
                onPressed: () {
                  context.go('/home');
                },
                child: const Text(
                  'Boton',
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(10)),
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width - 50,
              child: FilledButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const QuestionPage(
                                questNum: '1',
                                questText:
                                    "Porqué estamos aquí, solo para sufrir",
                                entries: ['Porque si', 'No', 'a'],
                                colorCodes: [600, 600, 600],
                                answerValues: [1,1,1],
                              )));
                },
                child: const Text(
                  'Boton2',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
