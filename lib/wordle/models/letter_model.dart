import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wordle/app/app_colors.dart';

enum LetterStatus { initial, notInWord, inWord, correct }

class Letter extends Equatable {
  const Letter({
    required this.val,
    required this.status,
  });

  factory Letter.empty() => const Letter(val: '', status: LetterStatus.initial);

  final String val;

  final LetterStatus status;

  Color get backgroundColor {
    switch (status) {
      case LetterStatus.initial:
        return Colors.transparent;
      case LetterStatus.notInWord:
        return cNotInWorld;
      case LetterStatus.inWord:
        return cInWorld;
      case LetterStatus.correct:
        return cCorrect;
    }
  }

  Color get borderColor {
    switch (status) {
      case LetterStatus.initial:
        return Colors.grey;
      default:
        return Colors.transparent;
    }
  }

  Letter copyWith({
    String? val,
    LetterStatus? status,
  }) {
    return Letter(
      val: val ?? this.val,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [val, status];
}
