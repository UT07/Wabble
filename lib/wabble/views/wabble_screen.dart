import 'package:flutter/material.dart';
import 'package:word_it_up/wabble/wabble.dart';

enum GameStatus { playing, submitting, lost, won }

class WabbleScreen extends StatefulWidget {
  const WabbleScreen({Key? key}) : super(key: key);

  @override
  State<WabbleScreen> createState() => _WabbleScreenState();
}

class _WabbleScreenState extends State<WabbleScreen> {
  GameStatus _gameStatus = GameStatus.playing;
  final List<Word> _board = List.generate(
    6,
    (_) => Word(letters: List.generate(5, (_) => Letter.empty())),
  );
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
