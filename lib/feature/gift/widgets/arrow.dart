import 'package:flutter/material.dart';

class BouncingArrowUnbox extends StatefulWidget {
  @override
  _BouncingArrowUnboxState createState() => _BouncingArrowUnboxState();
}

class _BouncingArrowUnboxState extends State<BouncingArrowUnbox>
    with TickerProviderStateMixin {
  late AnimationController _bounceController;
  late Animation<double> _bounceAnimation;

  @override
  void initState() {
    super.initState();

    _bounceController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 500),
    );

    _bounceAnimation = Tween<double>(begin: 0.0, end: 20.0).animate(
      CurvedAnimation(
        parent: _bounceController,
        curve: Curves.easeInOut,
      ),
    );

    _bounceController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _bounceController.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _bounceController.forward();
      }
    });

    _bounceController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _bounceAnimation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0,
              _bounceAnimation.value), // Thay đổi dấu trừ thành dấu cộng ở đây
          child: Icon(
            Icons.arrow_downward_rounded,
            size: 50,
            color: Colors.blue.shade800,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _bounceController.dispose();
    super.dispose();
  }
}
