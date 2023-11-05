import 'package:cbt_mobile/utils/constant.dart';
import 'package:cbt_mobile/utils/finish_dialog.dart';
import 'package:flutter/material.dart';

confirmDialog() => showDialog(
      context: navigatorKey.currentContext!,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                width: width(context),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey.shade200),
                child: Text(
                  'Konfirmasi Tes',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.warning,
                      size: 40,
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Flexible(
                      child: Text(
                        'Lorem ipsum is placeholder text commonly used in the graphic,',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1.5,
              ),
              Padding(
                padding:
                    EdgeInsets.only(right: 15, left: 15, bottom: 15, top: 5),
                child: SizedBox(
                  height: 30,
                  width: width(context),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      "YA",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );

finishDialog() => showDialog(
      context: navigatorKey.currentContext!,
      builder: (context) {
        return FinishDialog();
      },
    );
