import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('The snackbar button always close the snackbar itself'),
      action: SnackBarAction(label: 'Close', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {

    showDialog(
      context: context, 
      barrierDismissible: false, // No permite salir del dialogo pulsando fuera de este
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Estas seguro de realizar esta acción la cual ahora desconozco cual es el procedimiento de dicha función generada ahora mismo.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: Text('Mostrar Snackbar'),
        icon: Icon(Icons.remove_red_eye_rounded),
        onPressed: () => showCustomSnackbar(context),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Muestra las licencias usadas por el dispositivo, tanto de flutter como de las librerias que este usando la aplicación.')
                  ]
                ); // Dialogo con las licencias
              },
              child: const Text('Licencias usadas')
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogo de pantalla')
            ),
          ],
        ),
      )
    );
  }
}