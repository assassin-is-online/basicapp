import 'package:flutter/material.dart';

class MainAppPage extends StatelessWidget {
  const MainAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Color(0xFF303133),
      //   leading: Icon(Icons.arrow_back),
      //   actions: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      //         CircleAvatar(
      //           foregroundColor: Colors.amber,
      //         ),
      //       ],
      //     )
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFF303133),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.amber,
                    ),
                  )
                ],
              ),
            ),
            Stack(
              alignment: Alignment.topLeft,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 200,
                  color: Color(0xFF303133),
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  width: double.infinity,
                  height: 700,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(150),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .5,
                        color: Colors.blue,
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.file_copy_rounded,
                                  color: Colors.green,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 18.0),
                                  child: Stack(
                                    overflow: Overflow.visible,
                                    children: [
                                      Positioned(
                                        right: 10,
                                        child: Container(
                                          child: CircleAvatar(
                                            backgroundColor: Colors.cyan,
                                            radius: 10,
                                          ),
                                          margin: EdgeInsets.all(1),
                                        ),
                                      ),
                                      Positioned(
                                        //right: 10,
                                        child: Container(
                                          child: CircleAvatar(
                                            backgroundColor: Colors.yellow,
                                            radius: 10,
                                          ),
                                          margin: EdgeInsets.all(1),
                                        ),
                                      ),
                                      Positioned(
                                        left: 10,
                                        child: Container(
                                          child: CircleAvatar(
                                            backgroundColor: Colors.red,
                                            radius: 10,
                                          ),
                                          margin: EdgeInsets.all(1),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
