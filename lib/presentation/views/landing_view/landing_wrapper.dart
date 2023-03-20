import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:hashtag_basket_frontend/presentation/views/landing_view/di/landing_dependencies.dart';
import 'package:provider/provider.dart';

class LandingWrapper extends StatefulWidget {
  const LandingWrapper({Key? key}) : super(key: key);

  @override
  State<LandingWrapper> createState() => _LandingWrapperState();
}

class _LandingWrapperState extends State<LandingWrapper> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // All child pages have access to ShopDependencies (repositories, blocs etc),
      // check [router.dart] to which pages who has access
      providers: LandingDependencies.of(context).providers,
      // Since we are accessing the provider immediately, we must use builder
      // to provide new context that contains the provider
      builder: (context, child) => _init(context),
    );
  }

  AutoRouter _init(BuildContext context) {
    return const AutoRouter();
  }
}
