import 'package:auto_route/auto_route.dart';
import 'package:christmas/feature/home/router/home_router.dart';
import 'package:christmas/feature/landing/pages/landing_page.dart';
import 'package:christmas/router/router_name.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      name: "LandingRoute",
      path: XRoutes.landing,
      page: LandingPage,
      initial: true,
    ),
    HomeCoordinator.autoRoute,
    // redirect all other paths
    RedirectRoute(path: '*', redirectTo: ''),
  ],
)
class $XRouter {}
