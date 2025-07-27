import 'package:chat_application/common/theme/src/constants.dart';
import 'package:chat_application/common/widgets/container_base_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsActionCard extends StatelessWidget {
  const SettingsActionCard({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });
  final IconData icon;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GestureDetector(
        onTap: onTap,
        child: ContainerBaseWidget(
          child: Row(
            children: [
              Icon(icon, color: AppColors.blackColor),
              SizedBox(width: 12),
              Text(title, style: TextStyle(color: AppColors.blackColor)),
            ],
          ),
        ),
      ),
    );
  }
}
