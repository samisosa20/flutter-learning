import 'package:auto_route/auto_route.dart';

import '../../presentation/views/home_view.dart';
import '../../presentation/views/list_user_view.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true, path: '/'),
        AutoRoute(page: ListUserRoute.page, path: '/users'),
      ];
}

final appRouter = AppRouter();
