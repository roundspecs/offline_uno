import 'board.dart';
import 'card.dart';
import 'deck.dart';

class Player {
  final String name;
  final Deck _deck;
  final Board _board;
  final List<Card> _hand = [];
  var _saidUno = false;

  Player({
    required this.name,
    required Board board,
    required Deck deck,
  })  : _board = board,
        _deck = deck;

  int get handSize => _hand.length;

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

  bool sayUno() {
    if (handSize == 1) {
      _saidUno = true;
      return true;
    }
    return false;
  }

  bool didNotSayUnoChallenge() {
    if (handSize == 1 && !_saidUno) {
      draw(count: 2);
      return true;
    }
    return false;
  }
}
