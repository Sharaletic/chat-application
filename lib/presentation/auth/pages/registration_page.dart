import 'package:chat_application/common/extencions/theme_extencions.dart';
import 'package:chat_application/common/state_management/auth/auth_bloc.dart';
import 'package:chat_application/common/state_management/firebase_auth_bloc/firebase_auth_bloc.dart';
import 'package:chat_application/common/theme/src/constants.dart';
import 'package:chat_application/common/widgets/elevated_button_base_widget.dart';
import 'package:chat_application/common/widgets/snack_bar_base_widget.dart';
import 'package:chat_application/common/widgets/text_form_field_base_widget.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _key = GlobalKey<FormState>();
  final _nameUserController = TextEditingController();
  final _emailAddressController = TextEditingController();
  final _passwordController = TextEditingController();
  String nameUserText = '';
  String emailAddressText = '';
  bool isObscureText = true;

  @override
  void initState() {
    _nameUserController.addListener(() {
      setState(() {
        nameUserText = _nameUserController.text;
      });
    });
    _emailAddressController.addListener(() {
      setState(() {
        emailAddressText = _emailAddressController.text;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _nameUserController.dispose();
    _emailAddressController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.authBackgroundColor,
      body: BlocListener<FirebaseAuthBloc, FirebaseAuthState>(
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
                      controller: _nameUserController,
                      hintText: 'Your name',
                      suffixIcon: nameUserText.isNotEmpty
                          ? IconButton(
                              onPressed: () =>
                                  _textControllerClear(_nameUserController),
                              icon: Icon(Icons.clear),
                            )
                          : null,
                      validator: (value) => _userNameValidator(value),
                    ),
                    const SizedBox(height: 15),
                    TextFormFieldBaseWidget(
                      controller: _emailAddressController,
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'Your email address',
                      suffixIcon: emailAddressText.isNotEmpty
                          ? IconButton(
                              onPressed: () =>
                                  _textControllerClear(_emailAddressController),
                              icon: Icon(Icons.clear),
                            )
                          : null,
                      validator: (value) => _emailAddressValidator(value),
                    ),
                    const SizedBox(height: 15),
                    TextFormFieldBaseWidget(
                      controller: _passwordController,
                      hintText: 'Your password',
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
                          child:
                              BlocBuilder<FirebaseAuthBloc, FirebaseAuthState>(
                                builder: (context, state) {
                                  return state.maybeMap(
                                    loading: (_) => CircularProgressIndicator(
                                      color: AppColors.blackColor,
                                    ),
                                    orElse: () => Text('Enter'),
                                  );
                                },
                              ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            context.router.replace(
                              const NamedRoute('LoginRoute'),
                            );
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

  void _textControllerClear(TextEditingController controller) {
    setState(() {
      controller.clear();
    });
  }

  void _signUpBlocListener(Object? state, BuildContext context) {
    switch (state) {
      case ErrorFirebaseAuthState():
        SnackBarBaseWidget.showSnackBar(context, state.message);
      case SuccessfulFirebaseAuthState():
        context.router.replace(const NamedRoute('ChatRoute'));
    }
  }

  void _onPressedSignUpButton(BuildContext context) {
    if (_key.currentState!.validate()) {
      context.read<FirebaseAuthBloc>().add(
        FirebaseAuthEvent.signUp(
          displayName: _nameUserController.text,
          email: _emailAddressController.text,
          password: _passwordController.text,
        ),
      );
    }
  }

  String? _userNameValidator(String? value) {
    if (value!.isEmpty) {
      return 'Enter your user name';
    }
    return null;
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
