import 'package:flutter/material.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
   const Appbar({super.key});

  @override
  AppBar build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.arrow_back),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(Icons.more_horiz),
        ),
      ],
    );
  }

   @override
   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
