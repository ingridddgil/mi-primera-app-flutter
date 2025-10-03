import 'package:flutter/material.dart';

class MiniAction extends StatelessWidget {
  final String text;
  final Color color;
  final bool outlined;


  const MiniAction({
    super.key,
    required this.text,
    required this.color,
    this.outlined = false,
  });

  @override
  Widget build(BuildContext context){
    final style = OutlinedButton.styleFrom(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      side: BorderSide(color: color),
      foregroundColor: outlined ? color : Colors.white,
      backgroundColor: outlined ? Colors.transparent : color,
      textStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
    );
      
    return OutlinedButton(
      onPressed: () {},
        style: style, 
        child: Text(text)
    );
  }
}
