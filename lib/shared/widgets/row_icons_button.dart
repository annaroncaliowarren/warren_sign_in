import 'package:akar_icons_flutter/akar_icons_flutter.dart';
import 'package:flutter/material.dart';

class RowIconsButton extends StatelessWidget {
  const RowIconsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              AkarIcons.linkedin_box_fill,
              color: Color.fromRGBO(75, 14, 136, 1),
            ),
          ),
        ),
        const SizedBox(width: 19),
        CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              AkarIcons.google_fill,
              color: Color.fromRGBO(75, 14, 136, 1),
            ),
          ),
        ),
        const SizedBox(width: 18),
        IconButton(
          onPressed: () {},
          padding: const EdgeInsets.all(0),
          icon: const Icon(
            AkarIcons.github_fill,
            color: Colors.white,
            size: 40,
          ),
        ),
      ],
    );
  }
}
