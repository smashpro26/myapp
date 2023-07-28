import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0)
          ]),
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(15),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset(
                    'assets/search.svg',
                    width: 20,
                    height: 20,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(12),
                  child: SvgPicture.asset(
                    'assets/search.svg',
                    width: 20,
                    height: 20,
                  ),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none)),
          ),
        )
      ]),
    );
  }
}

AppBar appBar() {
  return AppBar(
    title: Text(
      'Breakfast',
      style: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.white,
    centerTitle: true,
    elevation: 0.0,
    leading: GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color.fromARGB(195, 234, 234, 234),
            borderRadius: BorderRadius.circular(10)),
        child: SvgPicture.asset(
          'assets/back.svg',
          height: 20,
          width: 20,
        ),
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {
          print("actions button pressed");
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(10),
          width: 37,
          decoration: BoxDecoration(
              color: Color.fromARGB(195, 234, 234, 234),
              borderRadius: BorderRadius.circular(10)),
          child: SvgPicture.asset(
            'assets/dots.svg',
            height: 20,
            width: 20,
          ),
        ),
      )
    ],
  );
}
