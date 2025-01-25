import 'dart:io';
import 'package:yazid_dice_roller_1/yazid_dice_roller_1.dart' as yazid_dice_roller_1;

void main(List<String> arguments) {
  print("Welcome To Hammad's Dice Roller!");

  while (true){
    // Meminta Input Jumlah Sisi Dice
    stdout.write("\nEnter the number of sides of the dice (e.g., 6, 8, 10): ");
      int? sides =
    int.tryParse(stdin.readLineSync() ?? "");

      if (sides == null || sides <= 0) {
        print("Invalid Input. Please Enter A Positive Number.");
        continue;
      }  

    // Melempar Dice
    int result = yazid_dice_roller_1.rollDice(sides);
    print("The dice rolled: $result");  

    // Menanyakan Apakah Ingin Melempar Lagi

    stdout.write("Roll Again? (yes/no): ");
    String? choice = stdin.readLineSync()?.trim().toLowerCase();

     // Periksa jika pengguna memilih "no"
    if (choice != null && choice == "no") {
      print("Thanks for playing! Goodbye!");
      break; // Keluar dari loop while jika pilihan adalah "no"
    } else if (choice != "yes") {
      // Jika input bukan "yes" atau "no", beri pesan kesalahan dan ulangi.
      print("Invalid input. Please enter 'yes' or 'no'.");
  }
} 
}