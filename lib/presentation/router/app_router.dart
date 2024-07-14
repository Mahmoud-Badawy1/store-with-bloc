// lib/presentation/router/app_router.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/pages/home_page/home_page_widget.dart';

class AppRouter {
  final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomePageWidget();
        },
      ),
      // Add more routes here as needed
    ],
  );
}
