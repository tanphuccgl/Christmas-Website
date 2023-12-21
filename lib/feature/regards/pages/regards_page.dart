import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegardsPage extends StatelessWidget {
  const RegardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
                width: 350,
                height: 350,
                child: Image.asset(
                  "assets/image11.png",
                  fit: BoxFit.contain,
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                "Cảm ơn em đã đến bên anh, lắng nghe chia sẻ cũng như thấu hiểu cùng nhau. Giáng sinh yêu thương, anh muốn dành tặng em tất cả những gì ấm áp hạnh phúc nhất trên thế giới này. Hãy chia sẻ mọi khoảnh khắc với anh, ta sẽ cũng nhau làm cũng nhau giải quyết cùng nhau tận hưởng nó . Chúc mừng Giáng Sinh Yêu em ",
                textAlign: TextAlign.center,
                style: GoogleFonts.roboto(
                    letterSpacing: 1,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 8, 81, 34),
                    fontSize: 25),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                children: [
                  Text(
                    "Công chúa của em",
                    style: GoogleFonts.roboto(
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 8, 81, 34),
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "-- Levi --",
                    style: GoogleFonts.roboto(
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 8, 81, 34),
                        fontSize: 25),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(
                "assets/hehe.gif",
                height: 125.0,
                width: 125.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
