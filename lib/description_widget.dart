import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String description;

  Description(this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(description),
      padding: const EdgeInsets.all(16.0),
    );
  }
}
