// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:cbt_mobile/utils/constant.dart';
import 'package:cbt_mobile/utils/navigator_helper.dart';
import 'package:cbt_mobile/view/exam.dart';
import 'package:flutter/material.dart';

class Confirm extends StatefulWidget {
  const Confirm({Key? key}) : super(key: key);

  @override
  State<Confirm> createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  var cardIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                alignment: Alignment.topCenter,
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
                  'assets/images/banner.png',
                  height: 130,
                ),
              ),
              Positioned(
                top: 140,
                right: 30,
                child: Container(
                  height: 70,
                  width: 200,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'ANDI SUGIONO',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const Text(
                                'Logout',
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 50,
                          height: 50,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              cardIndex == 0
                  ? Container(
                      margin: EdgeInsets.only(top: height(context) * 0.265),
                      padding: const EdgeInsets.all(30),
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Konfirmasi data Peserta',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Nomor Ujian Peserta',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: '123456',
                              contentPadding: EdgeInsets.only(left: 15),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Nama Peserta',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: 'ADI SUHENDAR',
                              contentPadding: EdgeInsets.only(left: 15),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Jenis Kelamin',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: 'Laki - Laki',
                              contentPadding: EdgeInsets.only(left: 15),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Mata Ujian',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: 'MATEMATIKA',
                              contentPadding: EdgeInsets.only(left: 15),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            height: 50,
                            width: width(context),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.blue.shade700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {
                                cardIndex = 1;
                                setState(() {});
                              },
                              child: Text(
                                "Submit",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      margin: EdgeInsets.only(top: height(context) * 0.265),
                      padding: const EdgeInsets.all(30),
                      width: 320,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Konfirmasi tes',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Nama Tes',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: 'UAS',
                              contentPadding: EdgeInsets.only(left: 15),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Status Tes',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                              hintText: 'AKTIF',
                              contentPadding: EdgeInsets.only(left: 15),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Waktu Tes',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: '',
                              contentPadding: EdgeInsets.only(left: 15),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Alokasi Waktu Tes',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          TextFormField(
                            enabled: false,
                            decoration: InputDecoration(
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: '60 Menit',
                              contentPadding: EdgeInsets.only(left: 15),
                              disabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            height: 50,
                            width: width(context),
                            child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.blue.shade700,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {
                                goPush(Exam());
                              },
                              child: Text(
                                "MULAI",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
