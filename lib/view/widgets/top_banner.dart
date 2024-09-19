import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                  "/Users/jasirali/Desktop/swan/asset/images/banner2.jpg"))),
      // child: Align(
      //     alignment: Alignment.bottomRight,
      //     child: Padding(
      //       padding: const EdgeInsets.all(15.0),
      //       child: Container(
      //         height: 40,
      //         width: 110,
      //         decoration: BoxDecoration(
      //             border: Border.all(color: kWhiteColor, width: 2),
      //             borderRadius: BorderRadius.circular(30)),
      //         child: const Center(
      //             child: Text(
      //           "Shop Now",
      //           style: TextStyle(color: kWhiteColor),
      //         )),
      //       ),
      //     )),
    );
  }
}
