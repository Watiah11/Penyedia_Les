import 'package:flutter/material.dart';
import '../items/profile_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> ContainerList = [
      "A",
      "A",
      "A",
      "A",
    ];

    List<String> CourseImage = [
      "url",
      "url",
      "url",
      "url",
    ];

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.03),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Cari di sini",
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  isDense: true,
                  contentPadding: EdgeInsets.all(0),
                ),
                textAlignVertical: TextAlignVertical.center,
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 160,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 4,
                padding: EdgeInsets.all(5),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(bottom: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.bottomLeft,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[400],
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(CourseImage[index]),
                          ),
                        ),
                        child: Text(ContainerList[index],
                            style:
                                TextStyle(fontSize: 20, color: Colors.white)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.only(left: 6),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFFADD8E6),
              ),
              child: Text(
                "Kelas Les",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        height: 132,
                        width: 132,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Color(0xFFF5F5F5),
                          image: DecorationImage(
                              image: AssetImage("assets/gitar.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(2),
                        height: 25,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[500]),
                        child: Text(
                          "Gitar",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        height: 132,
                        width: 132,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Color(0xFFF5F5F5),
                          image: DecorationImage(
                              image: AssetImage("assets/keyboard.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(2),
                        height: 25,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[500]),
                        child: Text(
                          "Keyboard",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        height: 132,
                        width: 132,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Color(0xFFF5F5F5),
                          image: DecorationImage(
                              image: AssetImage("assets/piano.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(2),
                        height: 25,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[500]),
                        child: Text(
                          "Piano",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        height: 132,
                        width: 132,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Color(0xFFF5F5F5),
                          image: DecorationImage(
                              image: AssetImage("assets/vokal.png"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(2),
                        padding: EdgeInsets.all(2),
                        height: 25,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[500]),
                        child: Text(
                          "Vokal",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
