import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgIcon extends StatelessWidget {
  final String path;
  final double size;
  final Color? color;

  const CustomSvgIcon({
    super.key,
    required this.path,
    this.size = 24.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: SvgPicture.asset(
        path,
        // The colorFilter pipeline ensures clean color masking without
        // losing pixel coordinates or vector sharp edges
        colorFilter: color != null
            ? ColorFilter.mode(color!, BlendMode.srcIn)
            : null,
        fit: BoxFit.contain,
        // Optional optimization flags for ultra-smooth UI layout pipelines
        clipBehavior: Clip.antiAlias,
      ),
    );
  }
}