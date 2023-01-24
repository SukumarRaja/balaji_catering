import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../themes/colors.dart';
import '../widgets/onboard/curve_image.dart';
import 'auth/loginAndSignup.dart';

class Onboarding extends StatefulWidget {
  Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.white,
        body: buildBody(),
      ),
    );
  }

  buildBody() {
    return CarouselSlider(
      options: CarouselOptions(
        onPageChanged: (index, reason) {
          setState(() {
            print(index);
          });
        },
        height: double.infinity,
        viewportFraction: 1.0,
        initialPage: 0,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: false,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      carouselController: controller,
      items: [1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  if (i == 1)
                    buildSlide(context,
                        index: 1,
                        image: "second",
                        title: "Get A Variety Of Choice To Choose !",
                        content:
                            "Lorem Ipsum is simply dummy text of the printing \n and typesetting industry.",
                        buttonText: "Next",
                        skipText: "Skip")
                  else if (i == 2)
                    buildSlide(context,
                        index: 2,
                        image: "second",
                        title: "Receive High Quality Food Close To You !",
                        content:
                            "Lorem Ipsum is simply dummy text of the printing \n and typesetting industry.",
                        buttonText: "Next",
                        skipText: "Skip")
                  else if (i == 3)
                    buildSlide(
                      context,
                      index: 3,
                      image: "second",
                      title: "Get A Variety Of Choice To Choose !",
                      content:
                          "Lorem Ipsum is simply dummy text of the printing \n and typesetting industry.",
                      buttonText: "Get Started",
                    )
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget buildSlide(
    BuildContext context, {
    required index,
    required image,
    required title,
    required content,
    required buttonText,
    String? skipText,
  }) {
    return Column(
      children: [
        ClipPath(
          clipper: CurveImage(),
          child: Container(
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/$image.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'bold', fontSize: 20),
              ),
            ),
            Text(
              content,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: InkWell(
            onTap: () {
              if (index == 3) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginAndSignup()));
              } else {
                controller.nextPage();
              }
            },
            child: Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      AppColors.first,
                      AppColors.second,
                      AppColors.third,
                    ],
                  )),
              child: Center(
                child: Text(
                  buttonText,
                  style: TextStyle(fontFamily: 'bold', color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        index == 3
            ? SizedBox()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginAndSignup()));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        skipText!,
                        style:
                            TextStyle(fontFamily: 'bold', color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
      ],
    );
  }
}
