import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_commerce/common/widgets/progress_dialog.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
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
            Navigator.of(context).pop();

            context.go('/login');
          },
          error: (message) {
            //Dismiss Progress Dialog
            Navigator.of(context).pop();

            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                const SnackBar(
                  content: Text('Failed to Logout'),
                  backgroundColor: Colors.red,
                ),
              );
          },
        );
      },
      builder: (context, state) {
        return ListView(
          children: [
            state.maybeWhen(
              orElse: () {
                return Container();
              },
              loggedIn: (value) {
                return Text(value);
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.read<AuthBloc>().add(const AuthEvent.logout());
              },
              child: const Text('Logout'),
            )
          ],
        );
      },
    );
  }
}
