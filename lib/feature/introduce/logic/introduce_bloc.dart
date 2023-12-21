import 'package:auto_route/auto_route.dart';
import 'package:christmas/toast_wrapper.dart';
import 'package:christmas/user_prefs.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part "introduce_state.dart";

class IntroduceBloc extends Cubit<IntroduceState> {
  IntroduceBloc() : super(IntroduceState());

  void onTapBox(BuildContext context) {
    if (state.isSelectB == true || UserPrefs().getKey() == true) {
      XToast.error("Hết quà mất tiêu rồi");
      return;
    }
    emit(IntroduceState());
    final bloc = context.read<IntroduceBloc>();
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext _) {
          return BlocProvider.value(
            value: bloc,
            child: BlocBuilder<IntroduceBloc, IntroduceState>(
              builder: (context1, state) {
                return AlertDialog(
                  actionsAlignment: MainAxisAlignment.center,
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          context.router.pop();
                        },
                        child: Text("Hủy")),
                    ElevatedButton(
                        onPressed: () {
                          if (state.isSelectA == false) {
                            XToast.error("Chưa có chọn anh kìa");
                            return;
                          }
                          if (state.isSelectB && state.isSelectB) {
                            UserPrefs().setKey();
                            XToast.success(
                                "Trẻ con mới chọn, người lớn lấy hết");
                            context.router.pop();
                            return;
                          }
                          context.router.pop();
                        },
                        child: Text("Xác nhận"))
                  ],
                  title: Text('Em chọn ik'),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Checkbox(
                                  value: state.isSelectA,
                                  onChanged: (value) => context1
                                      .read<IntroduceBloc>()
                                      .onChangeA()),
                              Text("Anh"),
                              Container(
                                width: 200,
                                height: 200,
                                child: Image.asset("assets/image6.png",
                                    fit: BoxFit.contain),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Checkbox(
                                  value: state.isSelectB,
                                  onChanged: (value) => context1
                                      .read<IntroduceBloc>()
                                      .onChangeB()),
                              Text("Key"),
                              Container(
                                width: 200,
                                height: 200,
                                child: Image.asset("assets/image5.png",
                                    fit: BoxFit.contain),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          );
        });
  }

  void onChangeA() {
    emit(state.copyWith(isSelectA: !state.isSelectA));
  }

  void onChangeB() {
    emit(state.copyWith(isSelectB: !state.isSelectB));
  }
}
