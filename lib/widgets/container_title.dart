import 'package:flutter/material.dart';

class ContainerTitle extends StatelessWidget {
  const ContainerTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Text(
        'Recognized words:',
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}
