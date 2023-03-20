import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class LandingDependencies {
  LandingDependencies._(this.context);

  factory LandingDependencies.of(BuildContext context) {
    return _instance != null
        ? _instance!
        : _instance = LandingDependencies._(context);
  }

  static LandingDependencies? _instance;

  final BuildContext context;

  late List<SingleChildWidget> providers = [
    ..._repositories,
    ..._usecases,
    ..._viewmodels,
  ];

  late final List<Provider> _repositories = [];

  late final List<Provider> _usecases = [];

  late final List<ChangeNotifierProvider> _viewmodels = [
    ChangeNotifierProvider(
      create: (context) => ChangeNotifier(),
    )
  ];
}
