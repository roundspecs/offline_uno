import 'package:equatable/equatable.dart';

enum Color { red, green, blue, yellow }
enum Symbol { zero, one, two, three, four, five, six, seven, eight, nine, skip, reverse, drawTwo, wild, wildDrawFour }

class Card extends Equatable {
  final Color color;
  final Symbol symbol;

  const Card(this.color, this.symbol);

  @override
  List<Object?> get props => [color, symbol];
}
