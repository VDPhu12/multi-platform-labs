import 'package:flutter/material.dart';

class XylophoneButton extends StatelessWidget {
  const XylophoneButton({
    super.key,
    required this.color,
    required this.onPressed,
  });

  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPressed,
        behavior: HitTestBehavior.opaque,// Giúp bắt sự kiện nhấn trên toàn bộ nút
        child: Container(
          height: 200,
          width: double.infinity,
          color: color,
        ),
      ),
    );
  }
}
