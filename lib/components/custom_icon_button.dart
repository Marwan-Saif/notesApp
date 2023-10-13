import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromARGB(91, 109, 109, 109),
      ),
      child: Center(
          child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          size: 24,
          color: Colors.white,
        ),
      )),
    );
  }
}
