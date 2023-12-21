import 'package:christmas/feature/landing/logic/landing_bloc.dart';
import 'package:christmas/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

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
    if (size.width < 1500 || size.height < 800) {
      return Scaffold(
        body: Center(
          child: Text("Chưa có responsize đâu bà"),
        ),
      );
    }
    return BlocProvider(
      create: (context) => LandingBloc(),
      child: BlocBuilder<LandingBloc, LandingState>(
        builder: (context, state) {
          String formattedTime = formatDuration(state.remainingTime);

          return Scaffold(
            body: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    "assets/Hero.png",
                    fit: BoxFit.fill,
                  ),
                ),
                if (state.remainingTime.inSeconds > 0)
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Sắp đến\nLễ Giáng Sinh 2023',
                              style: GoogleFonts.yesevaOne(
                                  fontSize: 50, fontWeight: FontWeight.normal)),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Thời gian còn lại: $formattedTime',
                              style: GoogleFonts.dmSans(
                                  fontSize: 20, fontWeight: FontWeight.normal)),
                        ],
                      ),
                    ),
                  ),
                if (state.remainingTime.inSeconds <= 0 && state.isChristmas)
                  Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hey, it’s\nChristmas time!",
                              style: GoogleFonts.yesevaOne(
                                  fontSize: 50, fontWeight: FontWeight.normal)),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "Món quà nho nhỏ anh dành cho em. Đây chỉ là một bước nhỏ\ntrong việc muốn mang lại hạnh phúc cho em, và anh sẽ cố gắng\ncải tiến thêm nữa để làm cho những khoảnh khắc này trở nên đặc biệt hơn",
                              style: GoogleFonts.dmSans(
                                  fontSize: 15, fontWeight: FontWeight.normal)),
                          SizedBox(
                            height: 30,
                          ),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 20),
                                  backgroundColor: Colors.green.shade700),
                              onPressed: () =>
                                  context.read<LandingBloc>().onLetGo(context),
                              child: Text("LET's GO",
                                  style: GoogleFonts.dmSans(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)))
                        ],
                      ),
                    ),
                  )
              ],
            ),
          );
        },
      ),
    );
  }

  String formatDuration(Duration duration) {
    int days = duration.inDays;
    int hours = duration.inHours % 24;
    int minutes = duration.inMinutes % 60;
    int seconds = duration.inSeconds % 60;

    return '$days ngày $hours giờ $minutes phút $seconds giây';
  }
}
