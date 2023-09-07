import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_commerce/common/utils/dimensions.dart';
import 'package:flutter_jago_commerce/common/widgets/custom_button.dart';
import 'package:flutter_jago_commerce/common/widgets/custom_password_textfield.dart';
import 'package:flutter_jago_commerce/common/widgets/custom_textfield.dart';
import 'package:flutter_jago_commerce/common/widgets/progress_dialog.dart';
import 'package:flutter_jago_commerce/core/auth/data/request/register_request_model.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final FocusNode _nameNode = FocusNode();
  final FocusNode _emailNode = FocusNode();
  final FocusNode _passNode = FocusNode();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          loading: () {
            showAdaptiveDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) => const ProgressDialog(),
            );
          },
          loggedIn: (value) {
            //Dismiss Progress Dialog
            Navigator.of(context).pop();

            context.go('/dashboard');
          },
          error: (message) {
            //Dismiss Progress Dialog
            Navigator.of(context).pop();

            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.red),
              );
          },
        );
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          child: ListView(
            children: [
              const SizedBox(height: Dimensions.paddingSizeDefault),
              CustomTextField(
                hintText: 'Name',
                focusNode: _nameNode,
                nextNode: _emailNode,
                textInputType: TextInputType.text,
                controller: _nameController,
              ),
              const SizedBox(height: Dimensions.paddingSizeSmall),
              CustomTextField(
                hintText: 'Email',
                focusNode: _emailNode,
                nextNode: _passNode,
                textInputType: TextInputType.emailAddress,
                controller: _emailController,
              ),
              const SizedBox(height: Dimensions.paddingSizeSmall),
              CustomPasswordTextField(
                hintTxt: 'Password',
                textInputAction: TextInputAction.done,
                focusNode: _passNode,
                controller: _passwordController,
              ),
              const SizedBox(height: Dimensions.paddingSizeDefault),
              CustomButton(
                onTap: () => _actionRegister(context),
                buttonText: 'Register',
              ),
            ],
          ),
        );
      },
    );
  }

  void _actionRegister(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      String name = _nameController.text.trim();
      String email = _emailController.text.trim();
      String password = _passwordController.text.trim();

      final model = RegisterRequestModel(
        name: name,
        email: email,
        password: password,
      );
      context.read<AuthBloc>().add(AuthEvent.register(model));
    }
  }
}
