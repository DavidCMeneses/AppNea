import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../globals.dart';

showAlertDialogQuest(BuildContext context) {
// set up the button

  Widget cancelButton = TextButton(
    child: Text("Cancelar", style: TextStyle(color: negro),),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

// set up the AlertDialog
  AlertDialog house_alert = AlertDialog(
    backgroundColor: gris_1,
    title: Text("No ha seleccionado una opción", style: TextStyle(color: negro)),
    content: Text("Porfavor seleccione una opción para continuar.", style: TextStyle(color: negro)),
    actions: [
      cancelButton
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return house_alert;
    },
  );
}