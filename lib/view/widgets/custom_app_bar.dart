import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:swan/const/size/size.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset("asset/logo/swan_logo.png", height: 60),
        ),
        const Spacer(),
        SvgPicture.asset("asset/svg/Group.svg"),
        kWidth(10),
        SvgPicture.asset("asset/svg/Vector-1.svg"),
        kWidth(10),
        SvgPicture.asset("asset/svg/Vector.svg"),
        kWidth(15),
      ],
    );
  }
}
