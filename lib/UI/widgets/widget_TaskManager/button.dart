import 'package:cheerup/UI/widgets/theme.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function() onTap;
  const MyButton({Key? key, required this.label, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xFFBA723E),
        ),
        child: Align(
            alignment: Alignment.center,
            child: Text(label,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ))),
      ),
    );
  }
}
