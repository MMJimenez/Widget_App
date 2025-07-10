import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  // No es necesario pero viene bien para testear pantallas
  // initialLocation: '/',

  routes: [
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (context, state) => HomeScreen(), 
    ),
    GoRoute(
      name: ButtonsScreen.name,
      path: '/buttons',
      builder: (context, state) => ButtonsScreen(), 
    ),
    GoRoute(
      name: CardsScreen.name,
      path: '/cards',
      builder: (context, state) => CardsScreen(), 
    ),
    GoRoute(
      name: AnimatedScreen.name,
      path: '/animated',
      builder: (context, state) => AnimatedScreen(), 
    ),
    GoRoute(
      name: AppTutorialScreen.name,
      path: '/app_tutorial',
      builder: (context, state) => AppTutorialScreen(), 
    ),
    GoRoute(
      name: InfiniteScrollScreen.name,
      path: '/infinite_scroll',
      builder: (context, state) => InfiniteScrollScreen(), 
    ),
    GoRoute(
      name: ProgressScreen.name,
      path: '/progress',
      builder: (context, state) => ProgressScreen(), 
    ),
    GoRoute(
      name: SnackbarScreen.name,
      path: '/snackbar',
      builder: (context, state) => SnackbarScreen(), 
    ),
    GoRoute(
      name: UiControlsScreen.name,
      path: '/ui_controls',
      builder: (context, state) => UiControlsScreen(), 
    ),
  ],
);