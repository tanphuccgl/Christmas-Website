import 'package:flutter/material.dart';

enum ItemDrawerEnum {
  introduce,
  memory,
  gift,
  regards;

  String get title {
    switch (this) {
      case introduce:
        return "GIỚI THIỆU";
      case memory:
        return "KỶ NIỆM";
      case gift:
        return "MÓN QUÀ";
      case regards:
        return "LỜI CHÚC";
    }
  }

  Color get color {
    switch (this) {
      case introduce:
        return Color(0xff65D2BD);
      case memory:
        return Color(0xffDB3D3D);
      case gift:
        return Color(0xff001D74);
      case regards:
        return Color(0xff0C9243);
    }
  }
}
