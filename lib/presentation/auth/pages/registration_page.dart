import 'package:chat_application/common/app_router/app_router.gr.dart';
import 'package:chat_application/common/extencions/theme_extencions.dart';
import 'package:chat_application/common/state_management/auth/auth_bloc.dart';
import 'package:chat_application/common/theme/src/constants.dart';
import 'package:chat_application/common/widgets/elevated_button_base_widget.dart';
import 'package:chat_application/common/widgets/snack_bar_base_widget.dart';
import 'package:chat_application/common/widgets/text_form_field_base_widget.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _key = GlobalKey<FormState>();
  final _emailAddressController = TextEditingController();
  final _passwordController = TextEditingController();
  String emailAddressText = '';
  bool isObscureText = true;

  @override
  void initState() {
    _emailAddressController.addListener(() {
      setState(() {
        emailAddressText = _emailAddressController.text;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _emailAddressController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.authBackgroundColor,
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) => _signUpBlocListener(state, context),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _key,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormFieldBaseWidget(
                      controller: _emailAddressController,
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'Your email address',
                      suffixIcon: emailAddressText.isNotEmpty
                          ? IconButton(
                              onPressed: () => _emailAddressClear(),
                              icon: Icon(Icons.clear),
                            )
                          : null,
                      validator: (value) => _emailAddressValidator(value),
                    ),
                    const SizedBox(height: 15),
                    TextFormFieldBaseWidget(
                      controller: _passwordController,
                      hintText: 'Your email address',
                      isObscureText: isObscureText,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        icon: isObscureText
                            ? Icon(
                                Icons.visibility_off,
                                color: AppColors.greyColor,
                              )
                            : Icon(
                                Icons.visibility,
                                color: AppColors.greyColor,
                              ),
                      ),
                      validator: (value) {
                        return _passwordValidator(value);
                      },
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButtonBaseWidget(
                          onPressed: () => _onPressedSignUpButton(context),
                          child: BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              switch (state) {
                                case Loading():
                                  return CircularProgressIndicator(
                                    color: AppColors.blackColor,
                                  );
                                default:
                                  return Text('Enter');
                              }
                            },
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            context.router.push(const LoginRoute());
                          },
                          child: Text(
                            'You already have an account? Enter',
                            style: context.text.displayMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _emailAddressClear() {
    setState(() {
      _emailAddressController.clear();
    });
  }

  void _signUpBlocListener(Object? state, BuildContext context) {
    switch (state) {
      case Failure():
        SnackBarBaseWidget.showSnackBar(context, state.message);
      case Success():
        context.router.push(const ChatRoute());
    }
  }

  void _onPressedSignUpButton(BuildContext context) {
    if (_key.currentState!.validate()) {
      context.read<AuthBloc>().add(
        AuthEvent.signUp(
          emailAddress: _emailAddressController.text,
          password: _passwordController.text,
        ),
      );
    }
  }

  String? _emailAddressValidator(String? value) {
    if (value!.isEmpty) {
      return 'Enter your email address';
    }
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value!.isEmpty) {
      return 'Enter your password';
    }
    return null;
  }
}
