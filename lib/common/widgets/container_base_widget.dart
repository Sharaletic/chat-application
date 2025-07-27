import 'package:chat_application/common/extencions/theme_extencions.dart';
import 'package:flutter/material.dart';

class ContainerBaseWidget extends StatelessWidget {
  const ContainerBaseWidget({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
  });
  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: context.text.colorSettingsButton,
      ),
      child: child,
    );
  }
}
