import 'package:flutter/material.dart';

class LoadMoreButton extends StatelessWidget {
  final Function() onTap;
  const LoadMoreButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black45,
            ),
            borderRadius: BorderRadius.circular(32)
        ),
        child: const Icon(Icons.more_horiz, size: 24,),
      ),
    );
  }
}
