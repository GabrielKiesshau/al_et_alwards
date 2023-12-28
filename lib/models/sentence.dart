class Sentence {
  final String _text;
  final String _author;

  const Sentence({
    required String text,
    required String author,
  })  : _text = text,
        _author = author;

  String get text => _text;
  String get author => _author;
}
