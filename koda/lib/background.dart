import 'package:flutter/material.dart';

BoxDecoration backgroundDecoration(BuildContext context) {
  return BoxDecoration(
    color: (Theme.of(context).brightness == Brightness.light) ? Theme.of(context).primaryColor : null,
    image: (Theme.of(context).brightness == Brightness.light)
        ? DecorationImage(
            fit: BoxFit.contain,
            opacity: .35,
            colorFilter: ColorFilter.mode(Theme.of(context).primaryColor, BlendMode.overlay),
            image: const AssetImage('assets/background.jpg'),
            repeat: ImageRepeat.repeat,
            matchTextDirection: true,
          )
        : DecorationImage(
            fit: BoxFit.contain,
            repeat: ImageRepeat.repeat,
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
            image: const AssetImage('assets/background.jpg'),
            matchTextDirection: true,
          ),
  );
}