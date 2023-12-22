import 'package:auto_route/auto_route.dart';
import 'package:christmas/feature/home/item_drawer_enum.dart';
import 'package:christmas/feature/home/logic/home_bloc.dart';
import 'package:christmas/router/app_router.gr.dart';
import 'package:christmas/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    if (!Utils.isWebDesktop) {
      return Scaffold(
        body: Center(
          child: Text("Chỉ dùng được trên web desktop"),
        ),
      );
    }
    if (size.width < 1000 || size.height < 500) {
      return Scaffold(
        body: Center(
          child: Text("Chưa có responsize đâu bà"),
        ),
      );
    }

    return AutoTabsRouter.pageView(
        physics: NeverScrollableScrollPhysics(),
        routes: [
          IntroduceRoute(),
          MemoryRoute(),
          GiftRoute(),
          RegardsRoute(),
        ],
        builder: (context, child, _) {
          final tabsRouter = AutoTabsRouter.of(context);

          return BlocProvider(
            create: (context) => HomeBloc(context, tabsRouter),
            child: BlocBuilder<HomeBloc, HomeState>(
              builder: (context, state) {
                return Scaffold(
                  body: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Container(
                        width: 300,
                        height: size.height,
                        color: ItemDrawerEnum
                            .values[
                                context.read<HomeBloc>().tabsRouter.activeIndex]
                            .color,
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                SizedBox(height: 30),
                                Text(
                                  ItemDrawerEnum
                                      .values[context
                                          .read<HomeBloc>()
                                          .tabsRouter
                                          .activeIndex]
                                      .title,
                                  style: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    letterSpacing: 2,
                                    color: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SizedBox(width: 3),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children:
                                            ItemDrawerEnum.values.map((e) {
                                          return Container(
                                            width: 10,
                                            height: 10,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            decoration: BoxDecoration(
                                                color: context
                                                            .read<HomeBloc>()
                                                            .tabsRouter
                                                            .activeIndex ==
                                                        e.index
                                                    ? Colors.blueGrey.shade700
                                                    : Colors.white,
                                                shape: BoxShape.circle),
                                          );
                                        }).toList(),
                                      ),
                                      RotatedBox(
                                        quarterTurns: 3,
                                        child: Text(
                                          "MERY\nCHRISTMAS",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.bold,
                                              color:
                                                  Colors.white.withOpacity(0.3),
                                              fontSize: 90),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Expanded(
                                      child: GestureDetector(
                                    onTap: () =>
                                        context.read<HomeBloc>().prePage(),
                                    child: Container(
                                      color: Colors.transparent,
                                    ),
                                  )),
                                  Expanded(
                                      child: GestureDetector(
                                    onTap: () =>
                                        context.read<HomeBloc>().nextPage(),
                                    child: Container(
                                      color: Colors.transparent,
                                    ),
                                  )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(child: child),
                    ],
                  ),
                );
              },
            ),
          );
        });
  }
}
