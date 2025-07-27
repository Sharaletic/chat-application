import 'package:flutter/material.dart';

class ElevatedButtonBaseWidget extends StatelessWidget {
  const ElevatedButtonBaseWidget({
    super.key,
    required this.child,
    required this.onPressed,
  });
  final Widget child;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(200, 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(16),
        ),
      ),
      child: child,
    );
  }
}
