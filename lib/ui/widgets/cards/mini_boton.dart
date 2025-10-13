import 'package:flutter/material.dart';

class MiniBoton extends StatelessWidget {
  final String text;
  final Color color;
  final bool outlined;
  final VoidCallback? onPressed;


  const MiniBoton({
    super.key,
    required this.text,
    required this.color,
    this.outlined = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context){
    final style = OutlinedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      minimumSize: Size.zero,
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      side: BorderSide(color: color),
      foregroundColor: outlined ? color : Colors.white,
      backgroundColor: outlined ? Colors.transparent : color,
      textStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4)
      ),
    );
      
    return OutlinedButton(
      onPressed: () {},
        style: style, 
        child: Text(text)
    );
  }
}
