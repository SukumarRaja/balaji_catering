import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../pages/loginandsignup.dart';

class Onboarding extends StatefulWidget {
  Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class CurveImage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 30);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class _OnboardingState extends State<Onboarding> {
  final CarouselController _controller = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return CarouselSlider(
      options: CarouselOptions(
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
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
      carouselController: _controller,
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
                    _buildSlide1(context)
                  else if (i == 2)
                    _buildSlide2(context)
                  else if (i == 3)
                    _buildSlide3(context)
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _buildSlide1(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: CurveImage(),
          child: Container(
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/first.jpeg',
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
                'Get A Varity Of Choice To Choose !',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'bold', fontSize: 20),
              ),
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing \n and typesetting industry.',
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
              _controller.nextPage();
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
                      Color(0xFFF15E38),
                      Color(0xFFFE9D16),
                    ],
                  )),
              child: Center(
                child: Text(
                  'Next',
                  style: TextStyle(fontFamily: 'bold', color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => loginAndSignupPage()));
            },
            child: Container(
              height: 50,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Skip',
                  style: TextStyle(fontFamily: 'bold', color: Colors.grey),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSlide2(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: CurveImage(),
          child: Container(
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/second.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Receive High Quality Food Close To You !',
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: 'bold', fontSize: 20),
              ),
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing  and typesetting industry.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 10),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: InkWell(
            onTap: () {
              _controller.nextPage();
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
                      Color(0xFFF15E38),
                      Color(0xFFFE9D16),
                    ],
                  )),
              child: Center(
                child: Text(
                  'Next',
                  style: TextStyle(fontFamily: 'bold', color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => loginAndSignupPage()));
            },
            child: Container(
              height: 50,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Skip',
                  style: TextStyle(fontFamily: 'bold', color: Colors.grey),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSlide3(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: CurveImage(),
          child: Container(
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/images/third.jpg',
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
                'Get A Varity Of Choice To Choose !',
                style: TextStyle(fontFamily: 'bold', fontSize: 20),
              ),
            ),
            Text(
              'Lorem Ipsum is simply dummy text of the printing \n and typesetting industry.',
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => loginAndSignupPage()));
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
                      Color(0xFFF15E38),
                      Color(0xFFFE9D16),
                    ],
                  )),
              child: Center(
                child: Text(
                  'Get Started!',
                  style: TextStyle(fontFamily: 'bold', color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
