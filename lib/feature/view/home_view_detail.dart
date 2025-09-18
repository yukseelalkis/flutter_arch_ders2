import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// bir deger dondureceksek ve bu deger <> seklinden yazabilirsin
@RoutePage()
final class HomeDetailView extends StatelessWidget {
  const HomeDetailView({required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar());
  }
}
