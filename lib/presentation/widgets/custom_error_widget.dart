import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget(
      {super.key, required this.error, required this.onPressed});
  final Object error;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            error.toString(),
          ),
          const Spacer(),
          ElevatedButton(onPressed: onPressed, child: const Text('Retry'))
        ],
      ),
    );
  }
}
