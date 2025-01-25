import 'package:test/test.dart';
import 'package:yazid_dice_roller_1/yazid_dice_roller_1.dart';

void main() {
  group('Dice Roller Tests', () {
    test('Roll dice should return a number between 1 and the number of sides', () {
      int sides = 6;
      int result = rollDice(sides);

      expect(result, inInclusiveRange(1, sides));
    });

    test('Roll dice with 10 sides should return a number between 1 and 10', () {
      int sides = 10;
      int result = rollDice(sides);

      expect(result, inInclusiveRange(1, sides));
    });

    test('Roll dice with invalid sides (e.g., 0 or negative) should throw error', () {
      expect(() => rollDice(0), throwsA(isA<RangeError>()));
      expect(() => rollDice(-5), throwsA(isA<RangeError>()));
    });
  });
}
