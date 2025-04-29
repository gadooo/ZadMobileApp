// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final Color? themsColor;

  const SearchBarWidget({
    super.key,
    this.themsColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 2),
          )
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: themsColor ?? Colors.grey),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintStyle: TextStyle(
                    color: themsColor ??
                        const Color.fromARGB(255, 60, 60, 60)), // hintStyle
                hintText: 'Search',
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            width: 1,
            height: 24,
            color: themsColor ?? Colors.grey[300],
          ),
          const SizedBox(width: 10),
          Icon(Icons.mic_none, color: themsColor ?? Colors.grey),
        ],
      ),
    );
  }
}
