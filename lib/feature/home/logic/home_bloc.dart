import 'package:auto_route/auto_route.dart';
import 'package:christmas/feature/home/item_drawer_enum.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  final BuildContext context;
  final TabsRouter tabsRouter;

  HomeBloc(this.context, this.tabsRouter) : super(const HomeState()) {}
  final GlobalKey<ScaffoldState> scaffoldKeyDrawer = GlobalKey<ScaffoldState>();

  void nextPage() {
    if (tabsRouter.activeIndex == ItemDrawerEnum.values.length) {
      return;
    }

    emit(state.copyWith(
        item: ItemDrawerEnum.values[tabsRouter.activeIndex + 1]));
    tabsRouter.setActiveIndex(tabsRouter.activeIndex + 1);
  }

  void prePage() {
    if (tabsRouter.activeIndex == 0) {
      return;
    }
    emit(state.copyWith(
        item: ItemDrawerEnum.values[tabsRouter.activeIndex - 1]));
    tabsRouter.setActiveIndex(tabsRouter.activeIndex - 1);
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
