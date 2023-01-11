import 'package:Application_4/Pages/homepage.dart';
import 'package:Application_4/Pages/signup%20page.dart';
import 'package:flutter/material.dart';


class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: ListView(
            padding: EdgeInsets.symmetric(
              vertical: 100,
              horizontal: 25,
            ),
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(
                  top: 60,
                  bottom: 60,
                ),
                child: Text(
                  'Pick your language',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    letterSpacing: .6,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Welcome, User',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: .6,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(bottom: 40, top: 10),
                child: Text(
                  'Please select your preferable language',
                  style: TextStyle(
                      fontSize: 16,
                      letterSpacing: .4,
                      color: Color.fromARGB(255, 95, 94, 94)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 4,
                ),
                margin: EdgeInsets.only(bottom: 15),

                height: 50,
                //  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    child: const Text(
                      'English',
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: .7,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Home();
                          },
                        ),
                      );
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(
                                color: Color.fromARGB(255, 108, 108, 108))),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 253, 253)),
                      elevation: MaterialStateProperty.all<double>(0),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 4,
                ),
                height: 50,
                //  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    child: const Text(
                      'Nepali',
                      style: TextStyle(
                        fontSize: 18,
                        letterSpacing: .7,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignUpPage();
                          },
                        ),
                      );
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: BorderSide(
                              color: Color.fromARGB(255, 108, 108, 108)),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 253, 253)),
                      elevation: MaterialStateProperty.all<double>(0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
