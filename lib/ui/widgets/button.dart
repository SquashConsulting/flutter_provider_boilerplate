import 'package:flutter/cupertino.dart';

import 'package:flutter_boilerplate/ui/utils/colors.dart';

class Button extends StatelessWidget {
  const Button(
      {Key key,
      @required this.title,
      @required this.onPressed,
      this.color: UIColors.main,
      this.width: 200})
      : super(key: key);

  final Widget title;
  final double width;
  final VoidCallback onPressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: CupertinoButton(
        color: color,
        onPressed: onPressed,
        child: title,
      ),
    );
  }
}
