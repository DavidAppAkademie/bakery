/// returns the time in minutes a given [backware] takes on a given [temp]
int backzeit(String backware, int temp) {
  if (backware == "Brot") {
    if (temp == 180) {
      return 40;
    } else if (temp == 200) {
      return 35;
    } else if (temp == 220) {
      return 30;
    } else {
      // ungueltige Temp.
      return 0;
    }
  } else if (backware == "Kuchen") {
    if (temp == 180) {
      return 50;
    } else if (temp == 200) {
      return 45;
    } else if (temp == 220) {
      return 40;
    } else {
      // ungueltige Temp.
      return 0;
    }
  } else if (backware == "Kekse") {
    if (temp == 180) {
      return 25;
    } else if (temp == 200) {
      return 20;
    } else if (temp == 220) {
      return 15;
    } else {
      // ungueltige Temp.
      return 0;
    }
  } else {
    // ungueltige Backwaren
    return 0;
  }
}
