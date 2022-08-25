import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterchallenge/home.dart';
import 'package:flutterchallenge/utilities/custom_searchbar.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int currentIndex = 0;
  List<Widget> screens = const [Home(), AccountPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 238, 238),
      body: screens[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 252, 129, 15),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        elevation: 10,
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 252, 129, 15),
          unselectedItemColor: Colors.grey.shade400,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.badge), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.people), label: ''),
          ],
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

Decoration customDecoration(Color color) {
  return BoxDecoration(color: color, boxShadow: [
    BoxShadow(
      color: Colors.grey,
      blurRadius: 0,
      offset: Offset(0, 0),
    )
  ]);
}

class CustomScrollView extends StatelessWidget {
  const CustomScrollView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          children: const [
            CustomCard(
              image: "images/img3.webp",
              title1: "Marketing",
              title2: "Community ",
              followers: "1.7 M ",
            ),
            CustomCard(
              image: "images/img9.webp",
              title1: "UI/UX  ",
              title2: "Designer",
              followers: "1.7 M ",
            ),
            CustomCard(
              image: "images/img4.webp",
              title1: "Illustrator",
              title2: "Community",
              followers: "1.7 M ",
            ),
          ]),
    );
  }
}

class CustomCard extends StatefulWidget {
  final image;
  final title1;
  final title2;
  final followers;
  const CustomCard(
      {Key? key, this.image, this.title1, this.title2, this.followers})
      : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 180,
        height: 50,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 235, 233, 233),
                blurRadius: 10,
                offset: Offset(0, 1),
              )
            ]),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title1,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
                Text(
                  widget.title2,
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "${widget.followers} Followers ",
              style: TextStyle(color: Colors.grey.shade400),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    onSurface: Colors.black,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    minimumSize: const Size(double.infinity, 40)),
                onPressed: () {},
                child: const Text("Follow"))
          ],
        ),
      ),
    );
  }
}

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const arrow_forward_ios_rounded =
        IconData(0xf579, fontFamily: 'MaterialIcons', matchTextDirection: true);
    const keyboard_arrow_down_rounded =
        IconData(0xf82b, fontFamily: 'MaterialIcons');
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(10),
              child: SearchBar(),
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              decoration: customDecoration(Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Manage your network",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(arrow_forward_ios_rounded)
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: customDecoration(Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10.0, left: 15, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Connected request",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          keyboard_arrow_down_rounded,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: customDecoration(Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                "images/admin.jpg",
                                width: 40,
                                height: 40,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Robert D. Beebe ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    "Designer at insignancer",
                                    style:
                                        TextStyle(color: Colors.grey.shade400),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  primary: Colors.grey.shade400,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                  ),
                                  minimumSize: Size(10, 50)),
                              onPressed: () {},
                              child: const Icon(Icons.check),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 5),
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      primary: Colors.black,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      minimumSize: Size(10, 50)),
                                  onPressed: () {},
                                  child: const Icon(Icons.check)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        customDecoration(Color.fromARGB(255, 250, 249, 249)),
                    child: const Center(
                      child: Text(
                        "view more",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: customDecoration(Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Popular page",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "view all",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade400),
                        )
                      ],
                    ),
                  ),
                  const Divider(),
                  Container(
                    height: 275,
                    child: CustomScrollView(),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(15),
              width: MediaQuery.of(context).size.width,
              decoration: customDecoration(Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recommend to connect",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(arrow_forward_ios_rounded)
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                width: MediaQuery.of(context).size.width,
                decoration: customDecoration(Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "images/admin1.jpg",
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Lyn T. Write",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                "UX Designer ",
                                style: TextStyle(color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)))),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.people_alt,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.add,
                              size: 15,
                              color: Colors.black,
                            )
                          ],
                        ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
