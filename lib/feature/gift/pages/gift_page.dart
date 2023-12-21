import 'package:christmas/feature/gift/logic/gift_bloc.dart';
import 'package:christmas/feature/gift/widgets/arrow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class GiftPage extends StatelessWidget {
  const GiftPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GiftBloc(),
      child: BlocBuilder<GiftBloc, GiftState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  left: 100,
                  bottom: 0,
                  child: SizedBox(
                    width: 250,
                    height: 250,
                    child: Image.asset("assets/image8.png"),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: SizedBox(
                    width: 400,
                    height: 400,
                    child: Image.asset("assets/image10.jpg"),
                  ),
                ),
                Positioned(
                  left: 80,
                  top: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Quà giáng sinh này không chỉ là vật phẩm\nmà còn là tình cảm sâu sắc và ý nghĩa đằng sau",
                        style: GoogleFonts.roboto(
                            letterSpacing: 1,
                            height: 1.5,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 10, 8, 78),
                            fontSize: 20),
                      ),
                      Text(
                        "Merry Christmas, pé iu của anh",
                        style: GoogleFonts.roboto(
                            letterSpacing: 1,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 10, 8, 78),
                            fontSize: 40),
                      ),
                    ],
                  ),
                ),
                Positioned.fill(
                  bottom: -200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BouncingArrowUnbox(),
                      SizedBox(
                        width: 500,
                        height: 500,
                        child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: GestureDetector(
                                onTap: () =>
                                    context.read<GiftBloc>().onTapGift(context),
                                child: Image.asset("assets/image7.jpg"))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
