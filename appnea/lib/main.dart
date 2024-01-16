import 'package:appnea/screens/home.dart';
import 'package:appnea/screens/questions/textonly.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Appnea'),
    );
  }
}

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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
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
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const QuestionPage(questNum: '1',
                          questText: "Porqué estamos aquí, solo para sufrir",
                          entries: ['Porque si','No','a'],
                          colorCodes: [600,600,600],)));
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
