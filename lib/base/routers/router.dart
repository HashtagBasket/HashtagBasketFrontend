// For every changes made in router, run the below command:
// `flutter pub run build_runner build --delete-conflicting-outputs`

import 'package:auto_route/auto_route.dart';
import 'package:hashtag_basket_frontend/presentation/views/landing_view/landing_view.dart';
import 'package:hashtag_basket_frontend/presentation/views/landing_view/landing_wrapper.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    MaterialRoute(
      path: 'landing',
      page: LandingWrapper,
      initial: true,
      children: [
        MaterialRoute(path: '', page: LandingView),
      ],
    ),
    // MaterialRoute(
    //   name: 'profile',
    //   path: 'profile',
    //   page: ProfileWrapper,
    //   children: [
    //     MaterialRoute(path: ':id/:isEdit', page: ProfilePage),
    //   ],
    // ),
  ],
)
class $Router {}
