import 'package:go_router/go_router.dart';
import 'package:world_travel/config/router/approute.dart';
import 'package:world_travel/pages/home_page.dart';
import 'package:world_travel/pages/lets_travel/lets_travel_dashboard_page.dart';
import 'package:world_travel/pages/lets_travel/lets_travel_home_page.dart';
import 'package:world_travel/pages/lets_travel/lets_travel_profile_page.dart';
import 'package:world_travel/pages/nike/nike_home_page.dart';
import 'package:world_travel/pages/photography/photography_home_page.dart';
import 'package:world_travel/pages/worldtravel_carousel_page.dart';
import 'package:world_travel/pages/worldtravel_home_page.dart';
import 'package:world_travel/pages/worldtravel_next_page.dart';

GoRouter router() {
  return GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: AppRoute.worldTravelHomePage,
        builder: (context, state) => const WorldTravelHomePage(),
      ),
      GoRoute(
        path: AppRoute.worldTravelCarousalPage,
        builder: (context, state) => const WorldTravelCarousalPage(),
      ),
      GoRoute(
        path: AppRoute.worldTravelNextPage,
        builder: (context, state) => const WorldTravelNextPage(),
      ),
      GoRoute(
        path: AppRoute.nikeHomePage,
        builder: (context, state) => const NikeHomePage(),
      ),
      GoRoute(
        path: AppRoute.photographyHomePage,
        builder: (context, state) => const PhotographyHomePage(),
      ),
      GoRoute(
        path: AppRoute.letstravelHomePage,
        builder: (context, state) => const LetsTravelHomePage(),
      ),
      GoRoute(
        path: AppRoute.letstravelDashboardPage,
        builder: (context, state) => const LetsTravelDashboardPage(),
      ),
      GoRoute(
        path: AppRoute.letstravelProfilePage,
        builder: (context, state) => const LetsTravelProfilePage(),
      ),
    ],
  );
}
