import 'package:flutter/material.dart';

class ComposedButton extends StatelessWidget {
  const ComposedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8),
        child: Stack(
          children: [
            SizedBox(
              //Boton grande
              height: 200,
              width: MediaQuery.of(context).size.width - 50,
              child: FilledButton(onPressed: () {}, child: const Text('Test')),
            ),
            Positioned(
              top: 5,
              right: 30,
              child: SizedBox(
                height: 60,
                width: (MediaQuery.of(context).size.width - 50)/4,
                child: IconButton(
                  icon: const Icon(Icons.info),
                  onPressed: () {}
                  ),
              )
              )
          ],
        ),
      ),
    );
  }
}
