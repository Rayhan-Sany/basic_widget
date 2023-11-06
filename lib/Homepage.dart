import 'package:flutter/material.dart';
import 'contrainers.dart';
import 'constants.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 93, 204, 255),
        title: const Row(
          children: [
            Text(
              'Precaution for ',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 22),
            ),
            Text(
              'Covid 19',
              style: TextStyle(
                  color: Color.fromARGB(255, 38, 0, 208),
                  fontWeight: FontWeight.w900,
                  fontSize: 24),
            ),
          ],
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          ListView.builder(
            itemBuilder: (context, index) {
              return Containers(
                mytext: data[index]!['text'],
                image: data[index]!['image'],
              );
            },
            itemCount: 7,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          )
        ]),
      ),
    );
  }
}
