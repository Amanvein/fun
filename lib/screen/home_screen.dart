import 'package:dating/widgets/icon.dart';
import 'package:flutter/material.dart';
import 'package:dating/controller/profile_controller.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: SalomonBottomBar(
          currentIndex: _currentIndex,
          unselectedItemColor: Colors.grey.shade400,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.home),
              title: const Text("Home"),
              selectedColor: Theme.of(context).splashColor,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.chat),
              title: const Text("Chats"),
              selectedColor: Theme.of(context).splashColor,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.mail),
              title: const Text("Message"),
              selectedColor: Theme.of(context).splashColor,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.person),
              title: const Text("Profile"),
              selectedColor: Theme.of(context).splashColor,
            ),
          ],
        ),
      ),
      body: GetX<ProfileController>(
        init: ProfileController(),
        initState: (_) {},
        builder: (profileController) {
          return profileController.isLoading.value
              ? Center(
                  child: CircularProgressIndicator(
                  strokeWidth: 1.5,
                  color: Theme.of(context).splashColor,
                ))
              : Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: SizedBox(
                                  height: 290,
                                  width: 160,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          child: Image.network(
                                              'https://googleflutter.com/sample_image.jpg'),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
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
                                          child: Text(
                                              "My Visitors".toUpperCase(),
                                              style: const TextStyle(
                                                  fontSize: 14)),
                                          style: ButtonStyle(
                                            foregroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.white),
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                        Color>(
                                                    Theme.of(context)
                                                        .splashColor),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                  Radius.circular(10.0),
                                                ),
                                                side: BorderSide(
                                                    color: Colors.red),
                                              ),
                                            ),
                                          ),
                                          onPressed: () => null),
                                    ],
                                  ),
                                ),
                              ),
                              //
                              //
                            ]),
                        SizedBox(height: 60.0)
                      ]),
                );
        },
      ),
    );
  }
}
