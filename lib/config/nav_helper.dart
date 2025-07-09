import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';

class NavHelper {
  final BuildContext context;

  NavHelper(this.context);
  
  void navigateToCardsScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const CardsScreen())
    );
  }

  void navigateToButtonsScreen() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ButtonsScreen())
    );
  }

  void navigateByReference(ScreenReferences reference) {
    switch (reference) {
      case ScreenReferences.buttons:
        return navigateToButtonsScreen();
      case ScreenReferences.cards:
        return navigateToCardsScreen();
    }
  }
}

enum ScreenReferences { buttons, cards }