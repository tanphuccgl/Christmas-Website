import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:christmas/router/app_router.gr.dart';
import 'package:christmas/toast_wrapper.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'landing_state.dart';

class LandingBloc extends Cubit<LandingState> {
  LandingBloc() : super(LandingState()) {
    init();
  }
  TextEditingController controller = TextEditingController();
  late Timer _timer;
  final DateTime targetDate = DateTime(2023, 12, 25, 0, 0, 0);

  void init() {
    startTimer();
    if (hasPassedTargetDate(targetDate)) {
      emit(state.copyWith(isChristmas: true));
    }
  }

  bool hasPassedTargetDate(DateTime targetDate) {
    DateTime now = DateTime.now();
    return now.isAfter(targetDate);
  }

  void startTimer() {
    const oneSecond = const Duration(seconds: 1);
    _timer = new Timer.periodic(oneSecond, (Timer timer) {
      DateTime now = DateTime.now();
      if (targetDate.isAfter(now)) {
        emit(state.copyWith(remainingTime: targetDate.difference(now)));
      } else {
        emit(state.copyWith(isChristmas: true));
        timer.cancel();
      }
    });
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }

  void onLetGo(BuildContext context) {
    controller.text = "";
    final bloc = context.read<LandingBloc>();
    showDialog(
        context: context,
        builder: (BuildContext _) {
          return BlocProvider.value(
            value: bloc,
            child: BlocBuilder<LandingBloc, LandingState>(
              builder: (context1, state) {
                return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            if (controller.text == "020709") {
                              context.router.pop();
                              context.router.push(HomeWrapperRoute());
                              return;
                            }
                            XToast.error(
                                "Lêu Lêu này chỉ dành cho pé iu của tui hoyy");
                            context.router.pop();
                          },
                          child: Text("Xác nhận"))
                    ],
                    title: Text('Phải pé iu của levi hong?\nMã gồm 6 số í'),
                    content: Container(
                      child: TextField(
                        controller: controller,
                        onChanged: (value) {},
                      ),
                    ));
              },
            ),
          );
        });
  }
}
