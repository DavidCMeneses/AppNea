import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../globals.dart';

showAlertDialogHouse(BuildContext context) {
// set up the button
  Widget okButton = TextButton(
    child: Text("Aceptar", style: TextStyle(color: negro)),
    onPressed: () {
      context.go('/');
    },
  );

  Widget cancelButton = TextButton(
    child: Text("Cancelar", style: TextStyle(color: negro)),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

// set up the AlertDialog
  AlertDialog house_alert = AlertDialog(
    backgroundColor: gris_1,
    title: Text("¿Está seguro?", style: TextStyle(color: negro)),
    content: Text("Si regresa al principio sus respuestas serán eliminadas.", style: TextStyle(color: negro)),
    actions: [
      okButton,
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