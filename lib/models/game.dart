import 'dart:math';

import 'package:offline_uno/models/board.dart';
import 'package:offline_uno/models/deck.dart';
import 'package:offline_uno/models/player.dart';

class Game {
  late final Deck _deck;
  late final Board _board;
  final List<Player> _players = [];
  late int _currentPlayerIndex;
  final _direction = 1;

  Game fromNames(List<String> names) {
    if (names.length < 2) {
      throw Exception('At least 2 players are required');
    }
    if (names.length > 10) {
      throw Exception('At most 10 players are allowed');
    }

    _deck = Deck()
      ..init()
      ..shuffle();

    _board = Board(deck: _deck)..init();

    for (String name in names) {
      var player = Player(name: name, board: _board, deck: _deck);
      player.init();
      _players.add(player);
    }

    _currentPlayerIndex = Random().nextInt(_players.length);

    return this;
  }
}
