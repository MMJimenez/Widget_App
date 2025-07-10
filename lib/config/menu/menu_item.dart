import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem> [
  MenuItem(
    title: 'Animated Container',
    subTitle: 'Stateful widget animado',
    link: AnimatedScreen.name,
    icon: Icons.check_box_outline_blank_rounded,
  ),
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en Flutter',
    link: ButtonsScreen.name,
    icon: Icons.smart_button_outlined,
  ),
  MenuItem(
    title: 'Infinite Scroll',
    subTitle: 'Un scroll infinito',
    link: InfiniteScrollScreen.name,
    icon: Icons.swap_vertical_circle_rounded,
  ),
  MenuItem(
    title: 'ProgressIndicators',
    subTitle: 'Generales y controlados',
    link: ProgressScreen.name,
    icon: Icons.refresh_rounded,
  ),
  MenuItem(
    title: 'Snackbar',
    subTitle: 'Snackbar',
    link: SnackbarScreen.name,
    icon: Icons.message_rounded,
  ),
  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: CardsScreen.name,
    icon: Icons.credit_card_outlined,
  ),
  MenuItem(
    title: 'Tutorial',
    subTitle: 'Un tutorial de la aplicación',
    link: AppTutorialScreen.name,
    icon: Icons.book_rounded,
  ),
  MenuItem(
    title: 'Ui Controls',
    subTitle: 'Ui Controls',
    link: UiControlsScreen.name,
    icon: Icons.control_camera_rounded,
  ),
];