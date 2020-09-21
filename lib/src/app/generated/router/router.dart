import 'package:auto_route/auto_route_annotations.dart';
import 'package:blockchain_ticker/src/ui/views/startup/startup_view.dart';
import 'package:blockchain_ticker/src/ui/views/home/home_view.dart';

@AdaptiveAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute(page: StartupView, initial: true),
    AdaptiveRoute(page: HomeView),
  ],
)
class $Router {}