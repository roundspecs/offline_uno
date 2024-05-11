enum Color { red, green, blue, yellow }
enum Symbol { zero, one, two, three, four, five, six, seven, eight, nine, skip, reverse, drawTwo, wild, wildDrawFour }

const nonWildSymbols = {
  Symbol.zero,
  Symbol.one,
  Symbol.two,
  Symbol.three,
  Symbol.four,
  Symbol.five,
  Symbol.six,
  Symbol.seven,
  Symbol.eight,
  Symbol.nine,
  Symbol.skip,
  Symbol.reverse,
  Symbol.drawTwo,
};

class Card {
  final Color? color;
  final Symbol symbol;

  const Card(this.color, this.symbol);
}
