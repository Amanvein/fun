import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<Widget> listContainer = [
    Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
    ),
    Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
    ),
    Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
    ),
    Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
    ),
    Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
    ),
    Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
    ),
    Container(
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 290,
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.network(
                                'https://googleflutter.com/sample_image.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Flexible(
                          child: Text(
                            "Uddesh Rajoriya",
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Gwalior, India",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Religion: ",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "Hindu",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        ElevatedButton(
                            child: Text("My Visitors".toUpperCase(),
                                style: const TextStyle(fontSize: 14)),
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                  side: BorderSide(color: Colors.red),
                                ),
                              ),
                            ),
                            onPressed: () => null),
                        // Row(
                        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //   children: [
                        //     Container(
                        //       child: Icon(Icons.favorite),
                        //       height: 40,
                        //       width: 40,
                        //       decoration: const BoxDecoration(
                        //         color: Colors.purple,
                        //         borderRadius: BorderRadius.all(
                        //           Radius.circular(10.0),
                        //         ),
                        //       ),
                        //     ),
                        //     Container(
                        //       child: Icon(Icons.message_outlined),
                        //       height: 40,
                        //       width: 40,
                        //       decoration: const BoxDecoration(
                        //         color: Colors.purple,
                        //         borderRadius: BorderRadius.all(
                        //           Radius.circular(10.0),
                        //         ),
                        //       ),
                        //     ),
                        //     Container(
                        //       child: Icon(Icons.arrow_downward),
                        //       height: 40,
                        //       width: 40,
                        //       decoration: const BoxDecoration(
                        //         color: Colors.purple,
                        //         borderRadius: BorderRadius.all(
                        //           Radius.circular(10.0),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 290,
                    width: 160,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.network(
                                'https://googleflutter.com/sample_image.jpg'),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Flexible(
                          child: Text(
                            "Uddesh Rajoriya",
                            overflow: TextOverflow.clip,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Gwalior, India",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Religion: ",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "Hindu",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Icon(Icons.favorite),
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                            ),
                            Container(
                              child: Icon(Icons.message_outlined),
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                            ),
                            Container(
                              child: Icon(Icons.arrow_downward),
                              height: 40,
                              width: 40,
                              decoration: const BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60.0,
            )
          ],
        ),
      ),
    );
  }
}
