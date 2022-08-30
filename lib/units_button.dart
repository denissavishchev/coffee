import 'package:flutter/material.dart';
import 'constants.dart';

class UnitsButton extends StatelessWidget {
  const UnitsButton({Key? key, required this.color, required this.child, required this.onPress, required this.frameColor}) : super(key: key);

  final Color color;
  final Color frameColor;
  final Widget child;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 70,
        height: 70,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
          border: Border.all(width: 3, color: frameColor,),
        ),
        child: child,
      ),
    );
  }
}

