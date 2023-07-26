import 'package:flutter/material.dart';

import 'package:weatherapp/widget/weather_page.dart';

class firstPage extends StatefulWidget {
  const firstPage({super.key});

  @override
  State<firstPage> createState() => _firstPage();
}

class _firstPage extends State<firstPage> {
  final TextEditingController _placeName = TextEditingController();

  //final _passwordController = TextEditingController();
  bool _isDataMatched = true;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 61, 82, 109),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: _formkey,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                          height: 100,
                          width: 1000,
                          // color: Colors.amber,
                          child: Center(
                            child: Text(
                              'Enter any place',
                              style: TextStyle(
                                  color: Color.fromARGB(244, 211, 213, 235),
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          )),
                      const SizedBox(
                        height: 20.0,
                      ),

                      // Image.asset(
                      //   'lib/assets/images/dq.jpg',

                      // ),
                      TextFormField(
                        style: const TextStyle(color: Colors.white),
                        controller: _placeName,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          label: const Text("type here",
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),

                      const SizedBox(
                        height: 30.0,
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: !_isDataMatched,
                            child: const Text(
                              'username password doesnot match',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 176, 39, 39)),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                // if (_formkey.currentState!.validate()) {
                                //   checkLogin(context);
                                // } else {
                                // ignore: avoid_print
                                print('data empty');
                                //}

                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (ctx1) => WeatherPge(
                                            location: _placeName.text)));
                              },
                              child: const Text('ok'),
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 5, 49, 85))),
                        ],
                      ),

                      // ignore: prefer_const_constructors
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
