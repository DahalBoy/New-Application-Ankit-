import 'package:flutter/material.dart';

import 'language.dart';


class Purpose extends StatelessWidget {
  const Purpose({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 19, 96, 196),
          ),
        ),
        title: Container(
          child: Text(
            'Prodsdfasduct Detail',
            style: TextStyle(
              color: Color.fromARGB(255, 34, 108, 255),
              fontSize: 22,
              fontWeight: FontWeight.w500,
              letterSpacing: .0,
            ),
          ),
        ),
      ),
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
                  'Select Your Purpose',
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
                  'Please select your preferable purpose',
                  style: TextStyle(
                      fontSize: 16,
                      letterSpacing: .4,
                      color: Color.fromARGB(255, 95, 94, 94)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    child: SizedBox(
                      child: ElevatedButton(
                        child: const Text(
                          'Buy Now',
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
                                return Language();
                              },
                            ),
                          );
                        },
                        style: ButtonStyle(
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                side: BorderSide(
                                    color: Color.fromARGB(255, 108, 108, 108))),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 34, 108, 255),
                          ),
                          elevation: MaterialStateProperty.all<double>(0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    child: SizedBox(
                      // width: double.maxFinite,
                      child: ElevatedButton(
                        child: const Text(
                          'Add to cart',
                          style: TextStyle(
                            fontSize: 18,
                            letterSpacing: .7,
                            fontWeight: FontWeight.normal,
                            color: Color.fromARGB(255, 25, 89, 216),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Language();
                              },
                            ),
                          );
                        },
                        style: ButtonStyle(
                          shape:
                          MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: BorderSide(
                                  color: Color.fromARGB(255, 0, 0, 0)),
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
            ],
          ),
        ),
      ),
    );
  }
}
