import 'package:flutter/material.dart';
import 'package:word_it_up/wabble/wabble.dart';
import '../data/word_list.dart';
import 'dart:math';
import '../widgets/board.dart';

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
  int _currentWordIndex = 0;
  Word? get _currentWord =>
      _currentWordIndex < _board.length ? _board[_currentWordIndex] : null;
  Word _solution = Word.fromString(
    fiveLetterWords[Random().nextInt(fiveLetterWords.length)].toUpperCase(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'WABBLE',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            letterSpacing: 4,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Board(board: _board)],
      ),
    );
  }
}
