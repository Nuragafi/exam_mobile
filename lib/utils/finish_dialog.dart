import 'package:cbt_mobile/utils/constant.dart';
import 'package:flutter/material.dart';

class FinishDialog extends StatefulWidget {
  const FinishDialog({Key? key}) : super(key: key);

  @override
  State<FinishDialog> createState() => _FinishDialogState();
}

class _FinishDialogState extends State<FinishDialog> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
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
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  Text(
                    'Apakah anda yakin ingin mengakhiri mata ujian ini? \nSetelah ke mata ujian berikutnya anda tidak bisa kembali ke mata ujian sebelumnya',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.blue,
                        value: check,
                        onChanged: (bool? value) {
                          setState(() {
                            check = value!;
                            // print(value);
                            print(check);
                          });
                        },
                      ),
                      Flexible(
                        child: Text(
                          'Centang, kemudian tekan tombol selesi. \nAnda tidak akan bisa kembali ke soal jika sudah menekan tombol selesai',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Divider(
            thickness: 1.5,
          ),
          Padding(
              padding: EdgeInsets.only(right: 25, left: 25, bottom: 15, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 35,
                    width: 130,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor:
                            check == false ? Colors.grey : Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Selesai",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                    width: 130,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Tidak",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
