import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:svg_flutter/svg.dart';

import 'package:swan/const/color/color.dart';
import 'package:swan/const/size/size.dart';
import 'package:swan/controller/api/auth.dart';
import 'package:swan/view/widgets/carousal_slider.dart';

import 'package:swan/view/widgets/custom_app_bar.dart';
import 'package:swan/view/widgets/label_wodget.dart';
import 'package:swan/view/widgets/top_banner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPersistentFrameCallback(
      (timeStamp) async {
        AuthenticationService auth = AuthenticationService();
        await auth.auth();
      },
    );
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(),
              const TopBanner(),
              kHeight(10),
              const LabelWidget(
                title: "Our Brand",
              ),
              const OurBrand(),
              kHeight(10),
              const LabelWidget(
                title: "Our Product",
              ),
              const CarouselSliderWidget(),
              kHeight(10),
              const LabelWidget(title: "Suggested for you"),
              const SuggestedForYou(),
              Image.asset(
                fit: BoxFit.cover,
                "asset/images/Group 1.png",
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SuggestedForYou extends StatelessWidget {
  const SuggestedForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        height: 280,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return kWidth(20);
          },
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 230,
                    width: 161,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: SvgPicture.asset("asset/svg/like.svg"),
                      ),
                    )),
                const Text(
                  "Pennyblack Brown Black",
                  style: TextStyle(fontSize: 11),
                ),
                const Text(
                  "OMR 75.000",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }
}

class OurBrand extends StatelessWidget {
  const OurBrand({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: SizedBox(
        height: 150,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return kWidth(20);
          },
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 150,
              width: 114,
              decoration: BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.circular(10)),
            );
          },
          itemCount: 5,
        ),
      ),
    );
  }
}
