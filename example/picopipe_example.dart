import "package:picopipe/picopipe.dart";

void main() {
  List<String> graphemes(String string) {
    final chars = <String>[];

    for (final rune in string.runes) {
      chars.add(String.fromCharCode(rune));
    }

    return chars;
  }

  Map<String, int> frequency(List<String> graphemes) {
    final frequencies = <String, int>{};

    for (final grapheme in graphemes) {
      frequencies[grapheme] =
          frequencies.containsKey(grapheme) ? frequencies[grapheme]! + 1 : 1;
    }

    return frequencies;
  }

  final value = Pipe("Dart Board").to(graphemes).to(frequency)();
  value;
}
