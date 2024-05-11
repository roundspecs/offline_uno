import 'board.dart';
import 'card.dart';
import 'deck.dart';

class Person {
  final String name;
  final Deck deck;
  final Board board;
  final List<Card> hand = [];

  Person({
    required this.name,
    required this.board,
    required this.deck,
  });

  void init() {
    draw(count: 7);
  }

  void draw({int count = 1}) {
    for (int i = 0; i < count; i++) {
      hand.add(deck.draw());
    }
  }

  void play(int index) {
    final card = hand.removeAt(index);
    board.play(card);
  }
}
