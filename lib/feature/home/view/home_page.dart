import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey();

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Column(
          children: [
            const Text('Jago Commerce'),
            Text('Path: ${GoRouterState.of(context).fullPath}')
          ],
        ),
      ),
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activeIndex(context),
        items: _tabItemMap.entries.indexed.map((e) {
          var index = e.$1;
          var key = e.$2.key;
          var icons = e.$2.value;
          return BottomNavigationBarItem(
            label: key,
            icon: Icon(_activeIndex(context) == index ? icons[1] : icons[0]),
          );
        }).toList(),
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          var key = _tabItemMap.keys.indexed
              .firstWhere((element) => element.$1 == index)
              .$2;
          context.go('/$key'.toLowerCase());
        },
      ),
    );
  }

  final Map<String, List<IconData>> _tabItemMap = {
    'Dashboard': [Icons.home_outlined, Icons.home],
    'Order': [Icons.shopping_cart_outlined, Icons.shopping_cart],
    'More': [Icons.more_outlined, Icons.more]
  };

  int _activeIndex(BuildContext context) {
    final uriRoute = GoRouterState.of(context).uri.toString();

    for (var (i, key) in _tabItemMap.keys.indexed) {
      if (uriRoute.startsWith('/$key'.toLowerCase())) {
        return i;
      }
    }
    return 0;
  }
}
