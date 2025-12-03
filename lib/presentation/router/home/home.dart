part of '../router.dart';

/// [HomePageのルート]
@TypedGoRoute<HomeRoute>(
    path: '/',
)
class HomeRoute extends GoRouteData with $HomeRoute {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}