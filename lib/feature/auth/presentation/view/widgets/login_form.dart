import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_commerce/common/utils/custom_themes.dart';
import 'package:flutter_jago_commerce/common/utils/dimensions.dart';
import 'package:flutter_jago_commerce/common/widgets/custom_button.dart';
import 'package:flutter_jago_commerce/common/widgets/custom_password_textfield.dart';
import 'package:flutter_jago_commerce/common/widgets/custom_textfield.dart';
import 'package:flutter_jago_commerce/core/auth/data/request/login_request_model.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  GlobalKey<FormState> _formKeyLogin = GlobalKey();

  final FocusNode _emailNode = FocusNode();
  final FocusNode _passNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _formKeyLogin = GlobalKey<FormState>();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(loaded: (model) {
          context.go('/dashboard');
        });
      },
      builder: (context, state) {
        return Form(
          key: _formKeyLogin,
          child: ListView(
            children: [
              const SizedBox(height: Dimensions.paddingSizeDefault),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox.adaptive(
                        value: false,
                        onChanged: (isChecked) {},
                      ),
                      const Text('Remember', style: titilliumRegular),
                    ],
                  ),
                  TextButton(
                    onPressed: () => {},
                    child: const Text('Forgot Password'),
                  ),
                ],
              ),
              const SizedBox(height: Dimensions.paddingSizeDefault),
              CustomButton(
                onTap: _actionLogin,
                buttonText: 'Sign In',
              ),
              const SizedBox(height: Dimensions.paddingSizeDefault),
              const Center(
                child: Text('OR'),
              ),
              const SizedBox(height: Dimensions.paddingSizeExtraExtraSmall),
              TextButton(
                onPressed: () => context.go('/dashboard'),
                child: const Text('Continue as Guest'),
              ),
            ],
          ),
        );
      },
    );
  }

  void _actionLogin() async {
    if (_formKeyLogin.currentState!.validate()) {
      _formKeyLogin.currentState!.save();

      String email = _emailController.text.trim();
      String password = _passwordController.text.trim();

      if (email.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Email'),
          backgroundColor: Colors.red,
        ));
      } else if (password.isEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Password'),
          backgroundColor: Colors.red,
        ));
      } else {
        final model = LoginRequestModel(
          email: email,
          password: password,
        );
        context.read<AuthBloc>().add(AuthEvent.login(model));
      }
    }
  }
}
