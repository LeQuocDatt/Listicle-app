import 'package:flutter/material.dart';

class SmallSlide extends StatelessWidget {
  final bool isActive;
  const SmallSlide({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: EdgeInsets.symmetric(horizontal: 4),
      width: isActive ? 40 : 15,
      height: 5,
      decoration: BoxDecoration(
          color: isActive ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(8)),
      duration: Duration(milliseconds: 350),
    );
  }
}
