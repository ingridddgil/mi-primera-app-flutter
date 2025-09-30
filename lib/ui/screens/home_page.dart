import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 152, 175),
      body: Center (
        child: Text(
          'This is Google Fonts',
          // style: GoogleFonts.bitcountGridDoubleInk(),
        ),

      )
    );

    }
  }
