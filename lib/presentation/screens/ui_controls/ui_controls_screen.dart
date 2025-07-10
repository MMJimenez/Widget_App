import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UI Controls')),
      body: _UiControlsView(),
    );
  }
}

String capFirstChar(String text) => text[0].toUpperCase() + text.substring(1);

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

enum EatsTime { breakfast, lunch, dinner }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  String selectedEats = '';

  Map<String, bool> wantsEat = {
    EatsTime.breakfast.name: false,
    EatsTime.lunch.name: false,
    EatsTime.dinner.name: false,
  };

  void selectedWantedEatsText() {
    String eats = '';
    for (String key in wantsEat.keys) {
      if (wantsEat[key] ?? false) {
        eats += '$key, ';
      }
    }
    if (eats.isNotEmpty) {
      eats = eats.replaceRange(
        eats.length - 2,
        eats.length - 1,
        '.',
      );
    }
    selectedEats = eats;
  }

  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer Mode'),
          subtitle: const Text('Contoles adicionales'),
          value: isDeveloper,
          onChanged:
              (value) => setState(() {
                isDeveloper = !isDeveloper;
              }),
        ),

        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text(capFirstChar(selectedTransportation.name)),
          children: [
            RadioListTile(
              value: Transportation.car,
              title: const Text('By Car'),
              subtitle: const Text('Viajar en coche'),
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.car;
                  }),
            ),
            RadioListTile(
              value: Transportation.plane,
              title: const Text('By Plane'),
              subtitle: const Text('Viajar en avión'),
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.plane;
                  }),
            ),
            RadioListTile(
              value: Transportation.boat,
              title: const Text('By Boar'),
              subtitle: const Text('Viajar en barco'),
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.boat;
                  }),
            ),
            RadioListTile(
              value: Transportation.submarine,
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar en submarino'),
              groupValue: selectedTransportation,
              onChanged:
                  (value) => setState(() {
                    selectedTransportation = Transportation.submarine;
                  }),
            ),
          ],
        ),

        ExpansionTile(
          title: const Text('Comidas'),
          subtitle: Text(selectedEats),
          children: [
            CheckboxListTile(
              title: Text('${capFirstChar(EatsTime.breakfast.name)}?'),
              value: wantsEat[EatsTime.breakfast.name],
              onChanged:
                  (value) => setState(() {
                    wantsEat[EatsTime.breakfast.name] = value ?? false;
                    selectedWantedEatsText();
                  }),
            ),
            CheckboxListTile(
              title: Text('${capFirstChar(EatsTime.lunch.name)}?'),
              value: wantsEat[EatsTime.lunch.name],
              onChanged:
                  (value) => setState(() {
                    wantsEat[EatsTime.lunch.name] = value ?? false;
                    selectedWantedEatsText();
                  }),
            ),
            CheckboxListTile(
              title: Text('${capFirstChar(EatsTime.dinner.name)}?'),
              value: wantsEat[EatsTime.dinner.name],
              onChanged:
                  (value) => setState(() {
                    wantsEat[EatsTime.dinner.name] = value ?? false;
                    selectedWantedEatsText();
                  }),
            ),
          ],
        ),
      ],
    );
  }
}
