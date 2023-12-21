import 'package:auto_route/auto_route.dart';
import 'package:christmas/feature/gift/pages/gift_page.dart';
import 'package:christmas/feature/home/pages/home_page.dart';
import 'package:christmas/feature/home/router/home_wrapper_router.dart';
import 'package:christmas/feature/introduce/pages/introduce_page.dart';

import 'package:christmas/feature/memory/pages/memory_page.dart';
import 'package:christmas/feature/regards/pages/regards_page.dart';
import 'package:christmas/router/router_name.dart';

class HomePageView {
  static const String introduce = 'introduce';
  static const String memory = 'memory';
  static const String gift = 'gift';
  static const String regards = 'regards';
}

class HomeCoordinator {
  static const autoRoute = AutoRoute(
    path: XRoutes.home,
    name: "HomeWrapperRoute",
    page: HomeWrapperPage,
    initial: true,
    children: [
      AutoRoute(
        name: "HomeRoute",
        page: HomePage,
        initial: true,
        children: [
          AutoRoute(
            name: "IntroduceRoute",
            path: HomePageView.introduce,
            page: IntroducePage,
            initial: true,
          ),
          AutoRoute(
            name: "MemoryRoute",
            path: HomePageView.memory,
            page: MemoryPage,
          ),
          AutoRoute(
            name: "GiftRoute",
            path: HomePageView.gift,
            page: GiftPage,
          ),
          AutoRoute(
            name: "RegardsRoute",
            path: HomePageView.regards,
            page: RegardsPage,
          ),
          RedirectRoute(path: '*', redirectTo: ''),
        ],
      ),
      RedirectRoute(path: '*', redirectTo: ''),
    ],
  );
}
