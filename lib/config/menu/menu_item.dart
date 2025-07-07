import 'package:flutter/material.dart';
import 'package:widgets_app/config/nav_helper.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;
  final ScreenReferences refNavigation;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
    required this.refNavigation 
  });
}

const appMenuItems = <MenuItem> [
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en FLutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
    refNavigation: ScreenReferences.buttons
  ),

  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
    refNavigation: ScreenReferences.cards
  ),

];