import 'package:flutter/material.dart';

import 'login.dart';

class loginAndSignupPage extends StatefulWidget {
  loginAndSignupPage({Key? key}) : super(key: key);

  static const String pageId = 'loginAndSignupPage';

  @override
  State<loginAndSignupPage> createState() => _loginAndSignupPageState();
}

class _loginAndSignupPageState extends State<loginAndSignupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.srcOver),
                  image: AssetImage(
                    'assets/images/bck.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: _buildBody(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: FittedBox(
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: 150,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  'Find and book chef & meal services near by you.',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginPage()));
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
                            Color(0xFFFD6E56),
                            Color(0xFFFE9454),
                          ],
                        )),
                    child: Center(
                      child: Text(
                        'Log in',
                        style:
                            TextStyle(fontFamily: 'bold', color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: InkWell(
                  onTap: () {
                    //
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50.0),
                      ),
                      color: Color(0xFF3885FF),
                    ),
                    child: Center(
                      child: Text(
                        'Sign Up',
                        style:
                            TextStyle(fontFamily: 'bold', color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Wrap(
                  children: [
                    Text(
                      'Already have an account ?',
                      style: TextStyle(
                          fontFamily: 'medium',
                          color: Colors.white,
                          fontSize: 16),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginPage()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontFamily: 'medium',
                            color: Color(0xFFFEBC34),
                            fontSize: 16),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
