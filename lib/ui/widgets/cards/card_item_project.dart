import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItemProject extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget? action1;
  final Widget? action2;

  const CardItemProject({
    super.key,
    required this.title,
    required this.subtitle,
    this.action1,
    this.action2,
  }); 

  @override
  Widget build(BuildContext context){
    return Card(
      elevation:0,
      color: Color(0xFFF1F2F4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (action1 != null) ...[
              const SizedBox(height: 10),
              action1!  
            ],
            SizedBox(height: 13),
            Text(
              title,
              style: GoogleFonts.montserrat(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500
              )
            ),
            SizedBox(height: 2),
            Text(
              subtitle,
              style: GoogleFonts.montserrat(
                color: Colors.grey[700],
              )
            ),
            SizedBox(height: 5),
            if (action2 != null) ...[
              const SizedBox(height: 10),
              action2!  
            ],
          ],
        ),
      ),
    );
  }

}

