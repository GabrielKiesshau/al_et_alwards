import 'dart:developer';

import 'package:al_et_alwards/models/sentence.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Sentence? _selectedOption;
  static const _sentences = [
    Sentence(
      text: 'A',
      author: 'a',
    ),
    Sentence(
      text: 'B',
      author: 'b',
    ),
    Sentence(
      text: 'C',
      author: 'c',
    ),
  ];

  void _submitChoice() {
    log('You chose x');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Qual a frase mais legal?',
            ),
            ..._sentences.map(
              (sentence) => RadioListTile<Sentence>(
                value: sentence,
                groupValue: _selectedOption,
                onChanged: (Sentence? value) {
                  log('You changed your option');
                  setState(() {
                    _selectedOption = value;
                  });
                },
                title: Text(sentence.text),
                subtitle: Text(sentence.author),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _submitChoice,
        child: const Icon(Icons.check),
      ),
    );
  }
}
