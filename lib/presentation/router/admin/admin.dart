part of '../router.dart';

/// [AdminPageのルート]
@TypedGoRoute<AdminRoute>(
  path: '/admin',
)
class AdminRoute extends GoRouteData with $AdminRoute {
  const AdminRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AdminPage();
  }
}