import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false, (para quitar la etiqueta de debug)
      title: 'My first app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(156, 154, 0, 98)),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 110,
                color: Color.fromARGB(255, 220, 80, 126),
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 20), // ajusta el padding para el icono
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: Colors.white, size: 32),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('hola, esto es un snackbar')),
                          );
                        },
                      ),
                      SizedBox(height: 0),
                      Padding(
                        padding: EdgeInsets.only(left:43),
                        child: Text(
                        'Hola Ingrid',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Text(  
                    'Probando flutter',
                    style: TextStyle(fontSize:23),
                  ),
                ),
                
              ),
            ]
          ), 
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('hola, esto es un snackbar')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}


        // appBar: AppBar(
        //   backgroundColor: const Color.fromARGB(255, 220, 80, 126),
        //   title: Container (//const Text('Hola ingrid'),
        //     padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        //     ------ decoration: BoxDecoration(  
        //        color: Colors.pink[100],
        //        borderRadius: BorderRadius.circular(8),
        //     ), ----- estas líneas hacen que el texto tenga un recuadro de fondo
        //     child: const Text('Hola ingridbonita',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 20,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // ),
          
          // 1 - flexibleSpace: Column(
          //   children: [
          //     Container(
          //       height: 40,
          //       color: Colors.pink[200],),
          //       const Spacer(),
          //   ],
          // ) -1
