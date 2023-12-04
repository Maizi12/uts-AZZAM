import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:SIAKMHS_NIM/login.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sistem Akademik Mahasiswa'),
          centerTitle: true,
        ),
        body: Container(
            color: Colors.cyan,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("<<< Back")),
                    )
                  ],
                ),
                const SizedBox(
                    width: 500,
                    height: 100,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Institut Teknologi Tangerang Selatan',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF005A92),
                              fontSize: 20,
                              fontFamily: 'SF Pro Rounded',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          )
                        ])),
                const SizedBox(
                    width: 500,
                    height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(image: AssetImage('assets/splash-2.png'))
                      ],
                    )),
                const SizedBox(
                  width: 343,
                  height: 200,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 100,
                    ),
                    Container(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          child: const Text("Next >>>")),
                    )
                  ],
                )
              ],
            )));
  }
}
