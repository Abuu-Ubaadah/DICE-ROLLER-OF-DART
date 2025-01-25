// int calculate() {
  // return 6 * 7;
//}

import 'dart:math';

int rollDice(int sides) {
  if (sides <= 0) {
    throw RangeError("The number of sides must be greater than 0");
  }

  Random random = Random();
  return random.nextInt(sides) + 1; // Hasil antara 1 dan jumlah sisi
}

