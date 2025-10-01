import 'package:flutter/material.dart';

class TestPage extends StatelessWidget{
  const TestPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold (
      backgroundColor: const Color.fromARGB(255, 139, 21, 16),
      body: Center (
        child: Column (
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Probando pantalla de prueba',
              style: TextStyle (
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              )
            ),
          ]
        )
      )

    );
  }
}