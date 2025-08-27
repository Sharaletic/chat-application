import 'package:chat_application/common/extencions/theme_extencions.dart';
import 'package:chat_application/common/state_management/auth/auth_bloc.dart';
import 'package:chat_application/common/state_management/firebase_auth_bloc/firebase_auth_bloc.dart';
import 'package:chat_application/common/theme/cubit/theme_cubit.dart';
import 'package:chat_application/presentation/settings/widgets/setting_toggle_card.dart';
import 'package:chat_application/presentation/settings/widgets/settings_action_card.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    final isDarkTheme = context.watch<ThemeCubit>().state.isDark;
    return Scaffold(
      body: BlocListener<FirebaseAuthBloc, FirebaseAuthState>(
        listener: (context, state) {
          switch (state) {
            case SuccessfulFirebaseAuthState():
              context.router.replace(const NamedRoute('RegistrationRoute'));
          }
        },
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              snap: true,
              floating: true,
              title: Text('Settings', style: context.text.labelStyle),
              centerTitle: true,
              elevation: 0,
              surfaceTintColor: Colors.transparent,
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 24)),
            SliverToBoxAdapter(
              child: SettingsActionCard(
                icon: Icons.logout,
                title: 'Logout',
                onTap: () => context.read<FirebaseAuthBloc>().add(
                  FirebaseAuthEvent.logOut(),
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: SettingToggleCard(
                icon: isDarkTheme ? Icons.dark_mode : Icons.light_mode,
                title: isDarkTheme ? 'Dark theme' : 'Light theme',
                value: isDarkTheme,
                onChanged: (value) => _setThemeBrightness(context, value),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _setThemeBrightness(BuildContext context, bool value) {
    context.read<ThemeCubit>().setThemeBrightness(
      value ? Brightness.dark : Brightness.light,
    );
  }
}
