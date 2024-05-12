import 'deck.dart';
import 'card.dart';

class Board {
  Card? topCard;
  final Deck _deck;

  Board({required Deck deck}) : _deck = deck;

  void init() {
    topCard = _deck.draw();
    while (topCard!.symbol == Symbol.wild ||
        topCard!.symbol == Symbol.wildDrawFour) {
      _deck
        ..add(topCard!)
        ..shuffle();
      topCard = _deck.draw();
    }
  }

  void play(Card card) {
    if (topCard == null) {
      throw Exception('The game has not started yet');
    }
    if (card.color != topCard!.color && card.symbol != topCard!.symbol) {
      throw Exception('Invalid card');
    }
    _deck.add(topCard!);
    topCard = card;
  }
}
