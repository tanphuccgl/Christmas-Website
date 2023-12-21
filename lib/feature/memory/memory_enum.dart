enum MemoryEnum {
  number7,
  number8,
  number9,
  number10,
  number11,
  number12;

  String get title {
    switch (this) {
      case number7:
        return "Tình Yêu Ngọt Ngào - 07/2023";
      case number8:
        return "Hương Yêu Mùa Hạ - 08/2023";
      case number9:
        return "Mùa Thu Tình Khúc - 09/2023";
      case number10:
        return "Lá Rơi Tình Yêu - 10/2023";
      case number11:
        return "Ngọt Ngào Mùa Đông - 11/2023";
      case number12:
        return "Đêm Hòa Nhạc Tình Yêu - 12/2023";
    }
  }

  List<String> get listA {
    final assets7 = "assets/07/";
    final assets8 = "assets/08/";
    final assets9 = "assets/09/";
    final assets10 = "assets/10/";
    final assets11 = "assets/11/";
    final assets12 = "assets/12/";
    switch (this) {
      case number7:
        return [
          "${assets7}07-01.jpeg",
          "${assets7}07-02.jpeg",
          "${assets7}07-03.jpeg",
          "${assets7}07-04.jpeg"
        ];
      case number8:
        return [
          "${assets8}08-01.jpeg",
          "${assets8}08-02.jpeg",
          "${assets8}08-03.jpeg",
          "${assets8}08-04.jpeg"
        ];
      case number9:
        return [
          "${assets9}09-01.jpeg",
          "${assets9}09-02.jpeg",
          "${assets9}09-03.jpeg",
          "${assets9}09-04.jpeg"
        ];
      case number10:
        return [
          "${assets10}10-01.jpeg",
          "${assets10}10-02.jpeg",
          "${assets10}10-03.jpeg",
          "${assets10}10-04.jpeg"
        ];
      case number11:
        return [
          "${assets11}11-01.jpeg",
          "${assets11}11-02.jpeg",
          "${assets11}11-03.jpeg",
          "${assets11}11-04.jpeg"
        ];
      case number12:
        return [
          "${assets12}12-01.jpeg",
          "${assets12}12-02.jpeg",
          "${assets12}12-03.jpeg",
          "${assets12}12-04.jpeg"
        ];
    }
  }

  List<String> get listB {
    final assets7 = "assets/07/";
    final assets8 = "assets/08/";
    final assets9 = "assets/09/";
    final assets10 = "assets/10/";
    final assets11 = "assets/11/";
    final assets12 = "assets/12/";
    switch (this) {
      case number7:
        return [
          "${assets7}07-05.jpeg",
          "${assets7}07-06.jpeg",
          "${assets7}07-07.jpeg",
          "${assets7}07-08.png"
        ];
      case number8:
        return [
          "${assets8}08-05.jpeg",
          "${assets8}08-06.jpeg",
          "${assets8}08-07.jpeg",
          "${assets8}08-08.jpeg"
        ];
      case number9:
        return [
          "${assets9}09-05.jpeg",
          "${assets9}09-06.jpeg",
          "${assets9}09-07.jpeg",
          "${assets9}09-08.jpeg"
        ];
      case number10:
        return [
          "${assets10}10-05.jpeg",
          "${assets10}10-06.jpeg",
          "${assets10}10-07.jpeg",
          "${assets10}10-08.jpeg"
        ];
      case number11:
        return [
          "${assets11}11-05.jpeg",
          "${assets11}11-06.jpeg",
          "${assets11}11-07.jpeg",
          "${assets11}11-08.jpeg"
        ];
      case number12:
        return [
          "${assets12}12-05.jpeg",
          "${assets12}12-06.jpeg",
          "${assets12}12-07.jpeg",
          "${assets12}12-08.jpeg"
        ];
    }
  }
}
