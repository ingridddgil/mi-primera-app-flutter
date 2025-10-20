import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double progress;

  const  ProgressBar({
    super.key,
    required this.progress,
    });

  @override 
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              '${(progress * 100).toStringAsFixed(0)}%',
              style: const TextStyle(fontSize: 14),
            ),
           ),
          LinearProgressIndicator(
            value: progress,
            minHeight: 6,
            color: Color(0xFF8B1E04),
            backgroundColor: Colors.grey[300],
            borderRadius: BorderRadius.circular(8),
          ),
        ],
      ),
    );
  }
}