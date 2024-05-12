import 'card.dart';


class Deck {
  final List<Card> _cards = [];

  void init() {
    for (Color color in Color.values) {
      for (Symbol symbol in Symbol.nonWildSymbols) {
        if (symbol != Symbol.zero) {
          _cards.add(Card(color, symbol));
        }
        _cards.add(Card(color, symbol));
      }
    }
    for (int i = 0; i < 4; i++) {
      _cards.add(const Card(null, Symbol.wild));
      _cards.add(const Card(null, Symbol.wildDrawFour));
    }
    shuffle();
  }

  void shuffle() {
    _cards.shuffle();
  }

  Card draw() {
    return _cards.removeLast();
  }

  void add(Card card) {
    _cards.add(card);
  }
}