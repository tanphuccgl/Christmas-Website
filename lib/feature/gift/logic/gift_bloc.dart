import 'package:auto_route/auto_route.dart';
import 'package:christmas/toast_wrapper.dart';
import 'package:christmas/user_prefs.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

part "gift_state.dart";

class GiftBloc extends Cubit<GiftState> {
  GiftBloc() : super(GiftState());

  void onTapGift(BuildContext context) {
    if (UserPrefs().getKey() == false) {
      XToast.error("Rương bị khóa rùi");
      return;
    }

    final bloc = context.read<GiftBloc>();
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext _) {
          return BlocProvider.value(
            value: bloc,
            child: BlocBuilder<GiftBloc, GiftState>(
              builder: (context1, state) {
                return AlertDialog(
                    actionsAlignment: MainAxisAlignment.center,
                    actions: [
                      ElevatedButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          child: Text("Xác nhận"))
                    ],
                    title: Text('Giáng sinh 2023'),
                    content: Container(
                      width: 350,
                      height: 200,
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                height: 20,
                                width: 20,
                                child: Image.asset("assets/image6.png"),
                              ),
                              Text(
                                "TANPHUC",
                                style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "TOUR DU LỊCH TRONG NƯỚC",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.amber.shade400,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "3 Ngày - 2 Đêm",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Giá khuyến mãi: One Kiss ",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "(*) Vé có hiệu lực trọn đời",
                              style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ));
              },
            ),
          );
        });
  }
}
