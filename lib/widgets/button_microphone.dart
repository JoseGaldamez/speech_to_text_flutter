import 'package:flutter/material.dart';

class ButtonMicrophone extends StatefulWidget {
  final bool isNotListening;
  final void Function()? startListening;
  final void Function()? stopListening;
  const ButtonMicrophone(
      {Key? key,
      required this.isNotListening,
      required this.startListening,
      required this.stopListening})
      : super(key: key);
  @override
  State<ButtonMicrophone> createState() => _ButtonMicrophoneState();
}

class _ButtonMicrophoneState extends State<ButtonMicrophone> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed:
          widget.isNotListening ? widget.startListening : widget.stopListening,
      tooltip: 'Escuchando',
      child: Icon(widget.isNotListening ? Icons.mic_off : Icons.mic),
    );
  }
}
