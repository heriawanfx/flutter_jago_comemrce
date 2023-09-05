import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_jago_commerce/common/utils/color_resources.dart';
import 'package:flutter_jago_commerce/common/utils/custom_themes.dart';
import 'package:flutter_jago_commerce/common/utils/dimensions.dart';
import 'package:flutter_jago_commerce/common/widgets/custom_button.dart';
import 'package:flutter_jago_commerce/common/widgets/custom_password_textfield.dart';
import 'package:flutter_jago_commerce/common/widgets/custom_textfield.dart';
import 'package:flutter_jago_commerce/feature/auth/data/request/login_request_model.dart';
import 'package:flutter_jago_commerce/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController? _emailController;
  TextEditingController? _passwordController;
  GlobalKey<FormState>? _formKeyLogin;

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
    _emailController!.dispose();
    _passwordController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(loaded: (model) {
          context.goNamed('/home');
          //go to HomePage
        });
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimensions.marginSizeLarge),
          child: Form(
            key: _formKeyLogin,
            child: ListView(
              padding: const EdgeInsets.symmetric(
                  vertical: Dimensions.paddingSizeSmall),
              children: [
                Container(
                    margin: const EdgeInsets.only(
                        bottom: Dimensions.marginSizeSmall),
                    child: CustomTextField(
                      hintText: 'Email',
                      focusNode: _emailNode,
                      nextNode: _passNode,
                      textInputType: TextInputType.emailAddress,
                      controller: _emailController,
                    )),
                Container(
                    margin: const EdgeInsets.only(
                        bottom: Dimensions.marginSizeDefault),
                    child: CustomPasswordTextField(
                      hintTxt: 'Password',
                      textInputAction: TextInputAction.done,
                      focusNode: _passNode,
                      controller: _passwordController,
                    )),
                Container(
                  margin:
                      const EdgeInsets.only(right: Dimensions.marginSizeSmall),
                  child: Row(
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
                        child: Text(
                          'Forgot Password',
                          style: titilliumRegular.copyWith(
                            color: ColorResources.getLightSkyBlue(context),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 20, right: 20, bottom: 20, top: 30),
                  child:
                      CustomButton(onTap: _actionLogin, buttonText: 'Sign In'),
                ),
                const SizedBox(width: Dimensions.paddingSizeDefault),
                const SizedBox(width: Dimensions.paddingSizeDefault),
                Center(
                  child: Text(
                    'OR',
                    style: titilliumRegular.copyWith(
                        fontSize: Dimensions.fontSizeDefault),
                  ),
                ),
                TextButton(
                  onPressed: () => context.go('/home'),
                  child: Text(
                    'Continue as Guest',
                    style: titleHeader.copyWith(
                      color: ColorResources.getPrimary(context),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _actionLogin() async {
    if (_formKeyLogin!.currentState!.validate()) {
      _formKeyLogin!.currentState!.save();

      String email = _emailController!.text.trim();
      String password = _passwordController!.text.trim();

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
