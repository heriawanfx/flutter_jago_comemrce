import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        return ListView(
          children: [
            state.maybeWhen(
              orElse: () {
                return Container();
              },
              loggedIn: (value) {
                return Text('Name: ${value?.user?.name}');
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
