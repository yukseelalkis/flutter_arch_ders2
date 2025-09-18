import 'package:arch_v2/feature/view/home_view.dart';
import 'package:arch_v2/feature/view/home_view_detail.dart';
import 'package:auto_route/auto_route.dart';
part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: AppRouter._replaceInRouteName)
final class AppRouter extends RootStackRouter {
  static const _replaceInRouteName = 'View|Page,Route';
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, initial: true),

    // Bunu web icin kullanabilirim id de verebiliyorum bunu  iligli sayfaya
    //gidip route Param seklinde constructer fonk icine atabiliriz
    //AutoRoute(path: 'home/:id',page: HomeRoute.page, initial: true),
    AutoRoute(page: HomeDetailRoute.page),
  ];
}
