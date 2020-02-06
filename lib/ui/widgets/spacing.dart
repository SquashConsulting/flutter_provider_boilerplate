import "package:flutter/widgets.dart";

enum HeightFactor { small, medium, large }

class Spacing extends StatelessWidget {
  const Spacing({Key key, this.heightFactor}) : super(key: key);

  final HeightFactor heightFactor;

  static double smallSpacing = 0.05;
  static double mediumSpacing = 0.1;
  static double largeSpacing = 0.2;

  double get _heightFactor {
    switch (heightFactor) {
      case HeightFactor.small:
        return smallSpacing;
      case HeightFactor.medium:
        return mediumSpacing;
      case HeightFactor.large:
        return largeSpacing;
      default:
        return smallSpacing;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: FractionallySizedBox(
        heightFactor: _heightFactor,
      ),
    );
  }
}
