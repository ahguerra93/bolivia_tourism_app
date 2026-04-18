import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import '../../features/home/presentation/wrappers/home_page_wrapper.dart';
import '../../features/city/presentation/wrappers/city_page_wrapper.dart';
import '../../features/activity/presentation/wrappers/activity_page_wrapper.dart';

class AppRoutes {
  static const String home = '/home';
  static const String city = '/city';
  static const String activity = '/activity';
}

class AppRouter {
  static GoRouter get router => GoRouter(
    initialLocation: AppRoutes.home,
    routes: [
      GoRoute(path: AppRoutes.home, builder: (_, __) => const HomePage()),
      GoRoute(
        path: '${AppRoutes.city}/:destinationId',
        builder: (_, state) {
          final destinationId = state.pathParameters['destinationId'] ?? 'dest_1';
          return CityPage(destinationId: destinationId);
        },
      ),
      GoRoute(
        path: '${AppRoutes.activity}/:experienceId',
        builder: (_, state) {
          final experienceId = state.pathParameters['experienceId'] ?? 'exp_1';
          return ActivityPage(experienceId: experienceId);
        },
      ),
      // StatefulShellRoute.indexedStack(
      //   builder: (context, state, navigationShell) => DashboardShell(navigationShell: navigationShell),
      //   branches: [
      //     StatefulShellBranch(
      //       routes: [GoRoute(path: AppRoutes.home, builder: (_, __) => const HomePage())],
      //     ),
      //     StatefulShellBranch(
      //       routes: [GoRoute(path: AppRoutes.city, builder: (_, __) => const CityPage())],
      //     ),
      //     StatefulShellBranch(
      //       routes: [GoRoute(path: AppRoutes.activity, builder: (_, __) => const ActivityPage())],
      //     ),
      //   ],
      // ),
    ],
  );
}

class DashboardShell extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const DashboardShell({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (index) => navigationShell.goBranch(index, initialLocation: index == navigationShell.currentIndex),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.location_city), label: 'Cities'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Activities'),
        ],
      ),
    );
  }
}
