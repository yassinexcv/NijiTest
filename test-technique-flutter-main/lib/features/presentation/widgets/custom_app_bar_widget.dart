import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Size preferredSize;
  final String title;
  final Color background_color;

  const CustomAppBarWidget({
    required this.title,
    required this.background_color,
    Key? key,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title),
      backgroundColor: background_color,
    );
  }
}
