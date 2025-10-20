import 'package:flutter/material.dart';
import 'card_item_project.dart';
import 'status_tag.dart'; 
import 'dart:math';
import '../progress_bar.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({
    super.key
  });

  @override
  Widget build(BuildContext context){
    final random = Random();
    final client = ['INNOPHOS FOSFATADOS DE MÉXICO', 'GEOSTOCK OPERACIÓN S.A DE C.V', 'PETROQUIMICA MEXICANA DE VINILO S.A DE C.V', 'PRO-AGROINDUSTRIA', 'TEREFTALATOS MEXICANOS'];
    final statusColors = [Colors.blue, Colors.green, Color(0xFFE2BC28), const Color.fromARGB(255, 179, 40, 30)];
    final statuses = ['Activo', 'Pendiente', 'Completado', 'Cancelado'];
    final state = List.generate(6, (_) => statuses[random.nextInt(statusColors.length)]);
    final items = List.generate(6, (i) => 'OS-${random.nextInt(10000)}'); 
    final per = List.generate(6, (_) => random.nextDouble());
    final listClient = List.generate(6, (i) => client[random.nextInt(client.length)]);
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, i) => CardItemProject(
        action1: Column(
          children: [
             StatusTag(
              color: statusColors[statuses.indexOf(state[i])],
              status: _getStatusText(statusColors[statuses.indexOf(state[i])]),
            ),
          ],
        ),

        title: items[i],
        
        subtitle: listClient[i],

        action2: Column(
          children: [
            ProgressBar(
              progress: per[i], 
            )
          ],
        ),
      ),
    );
  }
  String _getStatusText(Color color) {
  if (color == Colors.blue) return 'Completado';
  if (color == Colors.green) return 'Activo';
  if (color == Color(0xFFE2BC28)) return 'Pendiente';
  if (color == Color.fromARGB(255, 179, 40, 30)) return 'Cancelado';
  return '';
}
}