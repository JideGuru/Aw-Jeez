import 'package:aw_geez/theme/theme_config.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final Function? onTap;
  final BorderRadius? borderRadius;
  final bool elevated;

  const CustomCard({
    Key? key,
    required this.child,
    this.onTap,
    this.borderRadius,
    this.elevated = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: elevated
          ? BoxDecoration(
              borderRadius: borderRadius,
              color: Theme.of(context).cardColor,
              boxShadow: [
                ThemeConfig.cardShadow,
              ],
            )
          : BoxDecoration(
              borderRadius: borderRadius,
              color: Theme.of(context).cardColor,
            ),
      child: Material(
        type: MaterialType.transparency,
        borderRadius: borderRadius,
        child: InkWell(
          borderRadius: borderRadius,
          onTap: onTap == null ? () {} : () => onTap!(),
          child: child,
        ),
      ),
    );
  }
}
