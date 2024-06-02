import "package:flutter/material.dart";

class SigninAccountScreen extends StatefulWidget {
  SigninAccountScreen({super.key});

  @override
  State<SigninAccountScreen> createState() => _SigninAccountScreenState();
}

class _SigninAccountScreenState extends State<SigninAccountScreen> {
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    node1.addListener(() {
      setState(() {});
    });
    node2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff323A99), Color(0xffF98BFC)])),
      child: Scaffold(
          backgroundColor: Color(0xff1C1F2E),
          body: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              _getImageContainer(),
              _getContainetBox(),
            ],
          )),
    );
  }

  Widget _getImageContainer() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff323A99), Color(0xffF98BFC)])),
      child: Expanded(
          child: Positioned(
        top: 80,
        left: 0,
        right: 0,
        bottom: 0,
        child: Column(
          children: [
            Expanded(
              child: Image(
                image: AssetImage('images/rocket.png'),
              ),
            ),
            Expanded(child: Container()),
          ],
        ),
      )),
    );
  }

  Widget _getContainetBox() {
    return Column(
      children: [
        Expanded(child: Container()),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff1C1F2E)),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign in to ',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      Image(
                        image: AssetImage('images/mood.png'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 34,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 44),
                    child: TextField(
                      focusNode: node1,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          labelText: 'Email',
                          labelStyle: TextStyle(
                              fontFamily: 'GM',
                              fontSize: 15,
                              color:
                                  node1.hasFocus ? Colors.red : Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.white, width: 3.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Color(0xffF35383), width: 3.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 44),
                    child: TextField(
                      focusNode: node2,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              fontFamily: 'GM',
                              fontSize: 15,
                              color:
                                  node1.hasFocus ? Colors.red : Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide:
                                BorderSide(color: Colors.white, width: 3.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide(
                                color: Color(0xffF35383), width: 3.0),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Sign in')),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Dont have an account? / Signup',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    node1.dispose();
    node2.dispose();
  }
}
