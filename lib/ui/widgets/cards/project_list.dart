import 'package:flutter/material.dart';
import 'card_item.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({
    super.key
  });

  @override
  Widget build(BuildContext context){
    final items = List.generate(6, (i) => 'Proyecto ${i + 1}');
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, i) => CardItem(
        title: items[i].toUpperCase(),
        subtitle: 'Descripción breve del proyecto',
      ),
    );
  }
}