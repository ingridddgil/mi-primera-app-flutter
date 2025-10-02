import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget{
  final IconData icon;
  final VoidCallback onTap;

  const CircleIconButton(
    {super.key,
    required this.icon,
    required this.onTap
    }
  );

  @override 
  Widget build(BuildContext context){
    return InkResponse(
      onTap: onTap,
      radius: 24,
      child: Container(
        width: 36,
        height: 36,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Icon(icon, color: const Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }

}