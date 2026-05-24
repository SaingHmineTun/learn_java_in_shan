import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgIcon extends StatelessWidget {
  final String filename;
  final double size;
  final Color? color;

  const CustomSvgIcon({
    super.key,
    required this.filename,
    this.size = 32.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: SvgPicture.asset(
        "assets/icons/$filename",
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