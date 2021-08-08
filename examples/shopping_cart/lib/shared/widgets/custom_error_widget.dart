import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('An error occurred.'),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: onPressed,
            child: const Text('Try Again'),
          ),
        ],
      ),
    );
  }
}
