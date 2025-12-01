import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final Color? color;
  final String? text;
  final double? width;
  final double? height;
  final ImageProvider? image;
  final Color? textColor;
  final Color? iconColor;
  final Color? borderColor;

  const CustomButton({
    super.key,
    this.width = 50,
    this.height = 50,
    this.color,
    this.textColor,
    this.image = const AssetImage(''),
    this.onPressed,
    this.borderColor,
    this.iconColor,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Colors.blue,
        minimumSize: Size(width ?? 50, height ?? 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(color: borderColor ?? Colors.white),
        ),
      ),
      icon: ImageIcon(image, color: iconColor ?? Colors.white),
      label: Text('$text', style: TextStyle(color: textColor, fontSize: 12)),
    );
  }
}
