import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItemProgress extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget? actions;

  const CardItemProgress({
    super.key,
    required this.title,
    required this.subtitle,
    this.actions,
  });

  @override
  Widget build(BuildContext context){
    return Card(
      elevation: 0,
      color: Color(0xFFF1F2F4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.montserrat(
                color: Colors.black,
              )
            ),
            Text(
              subtitle,
              style: GoogleFonts.montserrat(
                color: Colors.grey[700],
              )
            ),
            if (actions != null) ...[
              const SizedBox(height: 10),
              actions!
            ],
          ],
        ),
      ),
    );
  }
}