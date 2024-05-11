import 'package:offline_uno/models/board.dart';
import 'package:offline_uno/models/deck.dart';
import 'package:offline_uno/models/player.dart';

class Game {
  final Deck _deck = Deck()
    ..init()
    ..shuffle();
  final List<Person> _players = [];

  Game fromNames(List<String> names) {
    if (names.length < 2) {
      throw Exception('At least 2 players are required');
    }
    if (names.length > 10) {
      throw Exception('At most 10 players are allowed');
    }
    Board board = Board(deck: _deck)..init();
    for (String name in names) {
      _players.add(Person(
        name: name,
        board: board,
        deck: _deck,
      )..init());
    }
    return this;
  }

}
