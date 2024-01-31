// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

// final bottomNavIndexProvider = StateProvider<int>((ref) => 0);

// class MNavigationBottom extends ConsumerWidget {
//   const MNavigationBottom({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Container(
//       child: AnimatedBottomNavigationBar(
//           icons: const [
//             Icons.home,
//             Icons.search,
//             Icons.add_box,
//             Icons.favorite,
//             Icons.account_circle,
//           ],
//           activeIndex: ref.watch(bottomNavIndexProvider),
//           gapLocation: GapLocation.center,
//           notchSmoothness: NotchSmoothness.verySmoothEdge,
//           leftCornerRadius: 32,
//           rightCornerRadius: 32,
//           onTap: (index) =>
//               ref.read(bottomNavIndexProvider.notifier).state = index
//           // other params
//           ),
//     );
//   }
// }
