import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

class ContainerText extends StatelessWidget {
  const ContainerText({
    Key? key,
    required SpeechToText speechToText,
    required String lastWords,
    required bool speechEnabled,
  })  : _speechToText = speechToText,
        _lastWords = lastWords,
        _speechEnabled = speechEnabled,
        super(key: key);

  final SpeechToText _speechToText;
  final String _lastWords;
  final bool _speechEnabled;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Text(
          _speechToText.isListening
              ? _lastWords
              : _speechEnabled
                  ? 'Click the floating button and talk...'
                  : 'No available',
        ),
      ),
    );
  }
}
