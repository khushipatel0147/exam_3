import 'package:exam_3/Screen/homeScreen.dart';
import 'package:exam_3/utiles/dataModal.dart';
import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {

  int? value;
  TextEditingController txtname = TextEditingController();
  TextEditingController txtstd = TextEditingController();
  TextEditingController txtgr = TextEditingController();

  @override
  Widget build(BuildContext context) {
    DataModal d1 =DataModal();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text(
          "Add Data Screen",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              fontSize: 25),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: txtname,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.teal, width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.teal, width: 1)),
                ),
                cursorColor: Colors.teal,
                autofocus: true,
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: txtgr,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.teal, width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.teal, width: 1)),
                ),
                cursorColor: Colors.teal,
                autofocus: true,
              ),
            ),
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: txtstd,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.teal, width: 2)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.teal, width: 1)),
                ),
                cursorColor: Colors.teal,
                autofocus: true,
              ),
            ),
            SizedBox(height: 15),
            InkWell(

              onTap: () {
                Navigator.pushNamed(context, '/',arguments: d1).then((value) {
                  return infoList.add(d1);
                },);
              },
              child: Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.teal, borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
