import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_item.dart';
import 'package:widgets_app/config/nav_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + Material 3')
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    
    List<MenuItem> list = appMenuItems;

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) { 
        return _CustomListTile(item: list[index]);
       },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
    required this.item,
  });

  final MenuItem item;

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    

    return ListTile(
      title: Text(item.title),
      subtitle: Text(item.subTitle),
      leading: Icon(item.icon, color: colors.primary ),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary ),
      onTap: () {
        // Esta es mi manera propia y no gestiona las URL de web
        // NavHelper(context).navigateByReference(item.refNavigation);

        // No es la manera recomendada porque no va en web correctamente
        // Pero si gestiona las URLs
        // Navigator.pushNamed(context, item.link); 

        context.push(item.link);
      },
    );
  }
}