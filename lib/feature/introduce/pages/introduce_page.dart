import 'package:christmas/feature/introduce/logic/introduce_bloc.dart';
import 'package:christmas/feature/introduce/widgets/bouncing_arrow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroducePage extends StatelessWidget {
  const IntroducePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => IntroduceBloc(),
      child: BlocBuilder<IntroduceBloc, IntroduceState>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                Container(
                    width: size.width,
                    height: size.height + 100,
                    child: Image.asset("assets/image3.png", fit: BoxFit.fill)),
                Positioned(
                  bottom: 0,
                  left: 100,
                  child: Row(
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () =>
                              context.read<IntroduceBloc>().onTapBox(context),
                          child: Container(
                              width: 400,
                              height: 300,
                              child: Image.asset("assets/image4.png",
                                  fit: BoxFit.contain)),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      BouncingArrow()
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "HELLO PÉ IU ",
                                style: GoogleFonts.roboto(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff063D39),
                                    fontSize: 50),
                              ),
                              Text(
                                "♥️",
                                style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                    fontSize: 50),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Giáng Sinh năm nay trở nên ý nghĩa hơn bao giờ hết, vì bên cạnh anh có\nmột người iu thương đặc biệt như em",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.bold,
                                height: 1.4,
                                letterSpacing: 1,
                                color: Color(0xff063D39),
                                fontSize: 20),
                          ),
                        ],
                      ),
                      Container(
                        width: 400,
                        height: 500,
                        child: Image.asset("assets/image1.png",
                            fit: BoxFit.contain),
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
