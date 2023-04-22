import 'package:candlesticks/src/theme/theme_data.dart';
import 'package:flutter/material.dart';

/// Top toolbar button widget.
class ToolBarAction extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;
  final double width;

  const ToolBarAction({
    Key? key,
    required this.child,
    required this.onPressed,
    this.width = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 30,
      child: RawMaterialButton(
        elevation: 0,
        fillColor: Color.fromARGB(255, 2, 4, 6),
        onPressed: onPressed,
        child: Center(child: child),
      ),
    );
  }
}
