import 'board.dart';
import 'card.dart';
import 'deck.dart';

class Person {
  final String name;
  final Deck _deck;
  final Board _board;
  final List<Card> _hand = [];

  Person({
    required this.name,
    required Board board,
    required Deck deck,
  }) : _board = board, _deck = deck;

  void init() {
    draw(count: 7);
  }

  void draw({int count = 1}) {
    for (int i = 0; i < count; i++) {
      _hand.add(_deck.draw());
    }
  }

  void play(int index) {
    final card = _hand.removeAt(index);
    _board.play(card);
  }
}
