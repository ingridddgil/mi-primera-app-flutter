// Draw a pill-shaped tab button that can show the progress's records or projects's records
import 'package:flutter/material.dart';

class TabPill extends StatelessWidget {
  final String text;
  final bool active;
  final VoidCallback onTap;

  const TabPill(
    {
      super.key,
      required this.text, 
      required this.active,
      required this.onTap
    }
  );

  @override
  Widget build(BuildContext context){
    const red = Color(0xFF8B1E04);

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: active ? red : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: red),
        ),
        child: Text(
          text,
          style: TextStyle (
            fontWeight: FontWeight.bold,
            color: active ? Colors.white : red,
          ),
        ),
      ),
    );
  }
}