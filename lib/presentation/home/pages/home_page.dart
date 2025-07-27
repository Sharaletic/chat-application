import 'package:auto_route/auto_route.dart';
import 'package:chat_application/common/app_router/app_router.gr.dart';
import 'package:chat_application/common/extencions/theme_extencions.dart';
import 'package:chat_application/common/theme/src/constants.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [ChatRoute(), SettingsRoute()],
      transitionBuilder: (context, child, animation) =>
          FadeTransition(opacity: animation, child: child),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: context.color.colorSettingsButton,
            unselectedItemColor: AppColors.whiteColor,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: [
              BottomNavigationBarItem(label: 'Chat', icon: Icon(Icons.chat)),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        );
      },
    );
  }
}
