import 'package:flutter/material.dart';

import '../utiles/dataModal.dart';

List<DataModal> infoList = [
  DataModal(name: 'Khushi', std: 12, gr: 3103),
  DataModal(name: 'Jenny', std: 10, gr: 3102),
  DataModal(name: 'Aksh', std: 8, gr: 3101),
  DataModal(name: 'Nidhi', std: 1, gr: 1159),
  DataModal(name: 'Kalavati', std: 2, gr: 7854),
  DataModal(name: 'Kiwi', std: 3, gr: 5896),
  DataModal(name: 'Lichi', std: 4, gr: 1520),
  DataModal(name: 'Cherry', std: 5, gr: 1520),
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.teal,
              title: Text(
                "Resume",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 25),
              ),
              leading:
                  Icon(Icons.account_circle, size: 25, color: Colors.white),
            ),
            body: Center(
              child: ListView.builder(
                  itemBuilder: (context, index) => myinfo(index),
                  itemCount: infoList.length),
            ),
            floatingActionButton: FloatingActionButton.small(
                onPressed: () {
                  setState(() {

                    Navigator.pushNamed(context, 'add');
                  });
                },
                child: Icon(Icons.add, size: 25, color: Colors.white),
                backgroundColor: Colors.teal)));
  }

  Widget myinfo(int index) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(height: 10),
          Column(
            children: [
              SizedBox(width: 5),
              Text(
                  "${infoList[index].name}"),
              Row(
                children: [
                  SizedBox(width: 5),
                  Text(
                      "${infoList[index].gr},"),
                  SizedBox(width: 15),
                  Text(
                      "${infoList[index].std}"),
                ],
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: InkWell(
                onTap: () {
                  setState(() {
                    AlertDialog(backgroundColor: Colors.teal.shade50,title: Text("Update"),);
                  });
                },
                child: Icon(Icons.edit, color: Colors.teal, size: 20)),
          ),
          SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InkWell(
                onTap: () {
                  setState(() {
                    infoList.removeAt(index);
                  });
                },
                child: Icon(Icons.delete, color: Colors.teal, size: 20)),
          ),
        ],
      ),
    );
  }
}
