import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class HomeWrapperPage extends StatelessWidget {
  const HomeWrapperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AutoRouter(),
    );
  }
}
