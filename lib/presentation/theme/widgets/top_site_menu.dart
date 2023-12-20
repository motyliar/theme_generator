import 'package:flutter/material.dart';
import 'package:theme_generate/presentation/theme/widgets/widgets.dart';

class TopSiteMenu extends StatelessWidget {
  const TopSiteMenu({
    required this.leftMenu,
    required this.rightMenu,
    required this.centerMenu,
    required this.flexLeft,
    required this.flexCenter,
    required this.flexRight,
    super.key,
  });
  final Widget leftMenu;
  final Widget rightMenu;
  final Widget centerMenu;
  final int flexLeft;
  final int flexCenter;
  final int flexRight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: flexLeft, child: leftMenu),
        Expanded(flex: flexCenter, child: centerMenu),
        Expanded(
          flex: flexRight,
          child: rightMenu,
        )
      ],
    );
  }
}
