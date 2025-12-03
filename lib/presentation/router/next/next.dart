part of '../router.dart';

/// [NextPageのルート]
@TypedGoRoute<NextRoute>(
  path: '/next',
)
class NextRoute extends GoRouteData with $NextRoute {
  const NextRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NextPage();
  }
}