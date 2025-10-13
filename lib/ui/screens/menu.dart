import 'package:flutter/material.dart';
import '../widgets/circle_icon_button.dart'; 
import '../widgets/tab_pill.dart';
import '../widgets/cards/project_list.dart';
import '../widgets/cards/lista_avances.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _ProgressPage();
}

class _ProgressPage extends State<MenuPage> {
  int sel = 0; // 0 proyectos, 1 avances,

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // empieza la configuración del app bar //

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: SizedBox(
          width: double.infinity,
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 235, 237, 237),
              borderRadius: BorderRadius.circular(35),
            ),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search_sharp, size:27),
                prefixIconColor: Colors.grey,
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 15),
              ),
            ),
          ),
        ),
      ),

      // a partir de qui es el body con el switch y las "tarjetas" //
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded (
                    child: TabPill(
                      text: 'Proyectos',
                      active: sel == 0,
                      onTap: () => setState(() => sel = 0)
                    ),
                  ),
                  Expanded (
                    child: TabPill(
                      text: 'Avances',
                      active: sel == 1,
                      onTap: () => setState(() => sel = 1)
                    ),
                  ),



                  const SizedBox(width: 8),
                  CircleIconButton(
                    icon: Icons.add,
                    onTap: () {
                      final msg = sel == 0 ? 'Nuevo proyecto' : 'Nuevo avance';
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(msg)),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),

              Expanded(
                child: sel == 0 ? const ProjectList() : const ProgressList(),
              ),
            ],
          ), 
        ),
      ),
    );
  }
}