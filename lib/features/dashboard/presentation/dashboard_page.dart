// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../common/utils/custom_themes.dart';
import '../../../common/utils/dimensions.dart';
import '../../../common/utils/show_custom_snakbar.dart';
import '../../../common/widgets/progress_dialog.dart';
import '../../../router/app_router.dart';
import '../../auth/presentation/bloc/auth_bloc.dart';
import '../../category/presentation/bloc/category_bloc.dart';
import '../../home/presentation/home_page.dart';
import '../../product/presentation/bloc/product_bloc.dart';
import 'pages/more_page.dart';
import 'pages/order_page.dart';

class DashboardPage extends StatelessWidget {
  final String tab;

  DashboardPage({super.key, required this.tab});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldMessengerState> scaffoldKey = GlobalKey();

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loading: () {
            showAdaptiveDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => const ProgressDialog(),
            );
          },
          loggedOut: () {
            //Dismiss Progress Dialog
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }

            context.goNamed(AppRouter.login);
          },
          error: (message) {
            //Dismiss Progress Dialog
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }

            showCustomSnackBar(message, context);
          },
        );
      },
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Jago Commerce'),
              Text(
                'Path: ${GoRouterState.of(context).uri.toString()}',
                style: titilliumRegular.copyWith(
                    fontSize: Dimensions.fontSizeSmall),
              )
            ],
          ),
        ),
        body: _dashboardMenus[_activeIndex(context)].page,
        bottomNavigationBar: NavigationBar(
          selectedIndex: _activeIndex(context),
          destinations: _dashboardMenus.map((e) {
            final labelName = e.path.toUpperCase();

            return NavigationDestination(
              label: labelName,
              icon: Icon(e.icon),
              selectedIcon: Icon(e.selectedIcon),
            );
          }).toList(),
          onDestinationSelected: (index) {
            _selectTab(context, index);
          },
        ),
      ),
    );
  }

  final List<DashboardMenu> _dashboardMenus = [
    DashboardMenu(
      path: AppRouter.home,
      page: const HomePage(),
      icon: Icons.home_outlined,
      selectedIcon: Icons.home,
    ),
    DashboardMenu(
      path: AppRouter.order,
      page: const OrderPage(),
      icon: Icons.shopping_cart_outlined,
      selectedIcon: Icons.shopping_cart,
    ),
    DashboardMenu(
      path: AppRouter.more,
      page: const MorePage(),
      icon: Icons.more_outlined,
      selectedIcon: Icons.more,
    ),
  ];

  int _activeIndex(BuildContext context) {
    return _dashboardMenus.indexWhere((element) => element.path == tab);
  }

  void _selectTab(BuildContext context, int index) {
    final selectedTab = _dashboardMenus[index].path;
    context.goNamed(AppRouter.dashboard, queryParameters: {'tab': selectedTab});
  }
}

class DashboardMenu {
  String path;
  Widget page;
  IconData icon;
  IconData selectedIcon;

  DashboardMenu({
    required this.path,
    required this.page,
    required this.icon,
    required this.selectedIcon,
  });
}
