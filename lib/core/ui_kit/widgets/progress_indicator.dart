import 'package:flutter/material.dart';

class CircularProgressInCenter extends StatelessWidget {
  const CircularProgressInCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
