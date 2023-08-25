import 'package:flutter/material.dart';

class SASeachbar extends StatelessWidget {
  final String? hint;
  const SASeachbar({super.key, this.hint});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      leading: const Icon(Icons.search),
      hintText: hint,
      surfaceTintColor: MaterialStateProperty.all(Colors.blueGrey[300]),
      overlayColor: MaterialStateProperty.all(Colors.white),
      backgroundColor: MaterialStateProperty.all(Colors.white),
      shadowColor: const MaterialStatePropertyAll(Colors.grey),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0))),
    );
  }
}
