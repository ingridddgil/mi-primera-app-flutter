// import 'package:flutter/material.dart';

// class ProgressPage extends StatefulWidget {
//   const ProgressPage({super.key});

//   @override
//   State<ProgressPage> createState() => _ProgressPageState();
// }

// class _ProgressPageState extends State<ProgressPage> {
//   int sel = 0;
//   // Simulación de datos para proyectos y avances
//   final List<String> proyectos = ['Proyecto 1', 'Proyecto 2'];
//   final List<String> avances = ['Avance 1', 'Avance 2', 'Avance 3'];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: SizedBox(
//           width: double.infinity,
//           child: Container(
//             decoration: BoxDecoration(
//               color: const Color.fromARGB(47, 236, 241, 247),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: const TextField(
//               decoration: InputDecoration(
//                 prefixIcon: Icon(Icons.search_rounded),
//                 prefixIconColor: Colors.grey,
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.symmetric(vertical: 12),
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: CustomScrollView(
//           slivers: [
//             SliverPersistentHeader(
//               pinned: true,
//               delegate: _StickyHeaderDelegate(
//                 minExtent: 64,
//                 maxExtent: 64,
//                 child: Container(
//                   color: Colors.white,
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   alignment: Alignment.centerLeft,
//                   child: Row(
//                     children: [
//                       Expanded(child: _TabPill(text: 'Proyectos', activo: sel == 0, onTap: () => setState(() => sel = 0))),
//                       const SizedBox(width: 8),
//                       Expanded(child: _TabPill(text: 'Avances', activo: sel == 1, onTap: () => setState(() => sel = 1))),
//                       const SizedBox(width: 8),
//                       _CircleIconButton(icon: Icons.add, onTap: () {}),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SliverPadding(
//               padding: const EdgeInsets.all(16),
//               sliver: sel == 0
//                   ? SliverList.separated(
//                       itemCount: proyectos.length,
//                       separatorBuilder: (_, __) => const SizedBox(height: 12),
//                       itemBuilder: (_, i) => _CardItem(),
//                     )
//                   : SliverGrid(
//                       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2,
//                         mainAxisSpacing: 12,
//                         crossAxisSpacing: 12,
//                         childAspectRatio: 0.75,
//                       ),
//                       delegate: SliverChildBuilderDelegate(
//                         (context, i) => TarjetaBasica(),
//                         childCount: avances.length,
//                       ),
//                     ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// }