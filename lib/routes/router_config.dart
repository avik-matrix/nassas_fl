import 'package:go_router/go_router.dart';
import 'package:nasas_fl/Pages/login.dart';
import '../Pages/homescreen.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) {
      return const HomeScreen();
    },
  ),
  GoRoute(
    path: '/auth',
    builder: (context, state) {
      return const Authentication();
    },
  )
]);
