import 'package:flutter/material.dart';
import 'card_item.dart';
import 'mini_boton.dart';

class ProgressList extends StatelessWidget {
  const ProgressList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(6, (i) => 'AVANCE 00${i + 1}');
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, i) => CardItem(
        title: items[i], 
        subtitle: 'P0${i + 1} - Proyecto de ejemplo',
        actions: Row(
          children: const [
            MiniBoton(
              text: 
              'Eliminar', color: Color(0xFF8B1E04),
            ),
            SizedBox(width: 8),
            MiniBoton(
              text: 'Editar',
              color: Color(0xFF8B1E04), outlined: true
            ),
          ],
        ),
      ),
    );
  }
}