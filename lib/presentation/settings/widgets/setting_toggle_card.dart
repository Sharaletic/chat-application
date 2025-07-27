import 'package:chat_application/common/colors/app_colors.dart';
import 'package:chat_application/common/widgets/container_base_widget.dart';
import 'package:flutter/cupertino.dart';

class SettingToggleCard extends StatelessWidget {
  const SettingToggleCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    this.onChanged,
  });
  final IconData icon;
  final String title;
  final bool value;
  final void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: ContainerBaseWidget(
        child: Row(
          children: [
            Icon(icon, color: AppColors.blackColor),
            SizedBox(width: 12),
            Text(title, style: TextStyle(color: AppColors.blackColor)),
            Spacer(),
            CupertinoSwitch(value: value, onChanged: onChanged),
          ],
        ),
      ),
    );
  }
}
