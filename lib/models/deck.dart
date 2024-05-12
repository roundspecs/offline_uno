import 'card.dart';


class Deck {
  final List<Card> cards = [];

  void init() {
    for (Color color in Color.values) {
      for (Symbol symbol in Symbol.nonWildSymbols) {
        if (symbol != Symbol.zero) {
          cards.add(Card(color, symbol));
        }
        cards.add(Card(color, symbol));
      }
    }
    for (int i = 0; i < 4; i++) {
      cards.add(const Card(null, Symbol.wild));
      cards.add(const Card(null, Symbol.wildDrawFour));
    }
    shuffle();
  }

  void shuffle() {
    cards.shuffle();
  }

  Card draw() {
    return cards.removeLast();
  }

  void add(Card card) {
    cards.add(card);
  }
}