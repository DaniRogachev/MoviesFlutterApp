import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:movies_app/app_router.gr.dart';

@Singleton()
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: MovieDetailsRoute.page),
      ];
}
