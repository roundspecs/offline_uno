import 'deck.dart';
import 'card.dart';

class Board {
  Card? topCard;
  final Deck deck;

  Board({required this.deck});

  void init() {
    topCard = deck.draw();
    while (topCard!.symbol == Symbol.wild ||
        topCard!.symbol == Symbol.wildDrawFour) {
      deck
        ..add(topCard!)
        ..shuffle();
      topCard = deck.draw();
    }
  }

  void play(Card card) {
    if (topCard == null) {
      throw Exception('The game has not started yet');
    }
    if (card.color != topCard!.color && card.symbol != topCard!.symbol) {
      throw Exception('Invalid card');
    }
    deck.add(topCard!);
    topCard = card;
  }
}
