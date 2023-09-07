import 'package:flutter/material.dart';
import 'package:flutter_jago_commerce/assets_gen/assets.gen.dart';
import 'package:flutter_jago_commerce/common/utils/dimensions.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/view/widgets/login_form.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/view/widgets/register_form.dart';
import 'package:go_router/go_router.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: _backgroundStack(context, _content(context)),
      ),
    );
  }

  Widget _backgroundStack(BuildContext context, Widget content) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          MyAssets.images.background.path,
          fit: BoxFit.fill,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        content,
      ],
    );
  }

  Widget _content(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: Dimensions.topSpace),
        Image.asset(MyAssets.images.cwbLogo.path, height: 150, width: 250),
        _tabForm(context)
      ],
    );
  }

  Widget _tabForm(BuildContext context) {
    return DefaultTabController(
      initialIndex: _selectedTabIndex(context),
      length: 2,
      child: Column(
        children: [
          const TabBar(
            tabs: [Tab(text: 'Login'), Tab(text: 'Register')],
            tabAlignment: TabAlignment.start,
            isScrollable: true,
          ),
          Builder(builder: (context) {
            return SizedBox(
              height: MediaQuery.of(context).size.height,
              child: const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.paddingSizeDefault,
                ),
                child: TabBarView(
                  children: [
                    LoginForm(),
                    RegisterForm(),
                  ],
                ),
              ),
            );
          })
        ],
      ),
    );
  }

  int _selectedTabIndex(BuildContext context) {
    final uriRoute = GoRouterState.of(context).uri.toString();
    if (uriRoute.startsWith('/register')) {
      return 1;
    }
    return 0;
  }
}
