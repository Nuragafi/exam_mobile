// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:cbt_mobile/utils/constant.dart';
import 'package:cbt_mobile/utils/navigator_helper.dart';
import 'package:cbt_mobile/view/confirm.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obs = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                alignment: Alignment.center,
                height: height(context) * 0.30,
                decoration: const BoxDecoration(
                  color: Color(0xff03045e),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/background.png',
                      ),
                      fit: BoxFit.cover),
                ),
                child: Image.asset(
                  "assets/images/logo-smk.png",
                  height: 150,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: height(context) * 0.265),
                padding: EdgeInsets.all(30),
                height: 400,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Column(
                  children: [
                    const Text(
                      'Selamat Datang',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Silahkan Login dengan username dan password yang telah anda miliki.',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Username',
                          contentPadding: EdgeInsets.only(left: 15)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        contentPadding: EdgeInsets.only(left: 15, top: 15),
                        suffixIcon: IconButton(
                          icon: Icon(
                              _obs ? Icons.visibility : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              _obs = !_obs;
                            });
                          },
                        ),
                      ),
                    ),
                    Spacer(),
                    SizedBox(
                      height: 50,
                      width: width(context),
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.blue.shade700,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {
                          goPush(Confirm());
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
