import 'package:dice_dart/dice_dart.dart' as dice_dart;
import 'dart:math';

void main() {
//Zufallszahl
  final random = Random();
//Ergebnis des vorherigen Wurfs, hier nur als Startwert mit einer 0 versehen
  int diceBefor = 0;

//Schleife beginnt
  while (true) {
//Würfelwurf = Zufallszahl von 1 bis 6 (Random startet bei 0 also am Ende +1)
    int diceCast = random.nextInt(6) + 1;
//Notiere das Würfelergebnis
    print('the dice count is $diceCast');

//wenn der Würfelwurf eine 6 ist und der verherige Wurf auch, beende die Schleife
    if (diceCast == 6 && diceBefor == 6) {
      print('we will stop here');
      break;
    }
//Ergebnis des vorherigen Wurfs wird gespeichert
    diceBefor = diceCast;
  }
}
