import 'package:auto_route/annotations.dart';
import 'package:gamifier/presentation/games/game_details/game_detail_page.dart';
import 'package:gamifier/presentation/games/game_overview/game_overview_page.dart';
import 'package:gamifier/presentation/sign_in/Sign_in_page.dart';
import 'package:gamifier/presentation/sign_up/sign_up_page.dart';
import 'package:gamifier/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  preferRelativeImports: true,
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: SignInPage),
    AutoRoute(page: GameOverviewPage),
    AutoRoute(page: GameDetailPage),

    // AutoRoute(page: NoteFormPage, fullscreenDialog: true),
  ],
)
class $AppRouter {}
