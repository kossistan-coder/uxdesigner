import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterchallenge/utilities/custom_card.dart';
import 'package:flutterchallenge/utilities/custom_searchbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            const CustomAppBar(),
            const SearchBar(),
            const SizedBox(
              height: 20,
            ),
            Container(height: 40, child: const CustomButtonTab()),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Featured Jobs",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  "view all",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey.shade400),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 260, 
            child: CustomScrollCard()),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recently Jobs",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  "view all",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey.shade400),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                width: MediaQuery.of(context).size.width,
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
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "images/img8.png",
                              width: 30,
                              height: 30,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Graphics Design",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  "Pune , Marashmara",
                                  style: TextStyle(color: Colors.grey.shade400),
                                ),
                              ],
                            )
                          ],
                        ),
                        const Icon(
                          Icons.bookmark,
                          color: Color.fromARGB(255, 252, 129, 15),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 230, 229, 229),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: const Text("Fulltime"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 230, 229, 229),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: const Text("Remote"),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: const EdgeInsets.all(10),
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 230, 229, 229),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: const Text("16 h ago"),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            customListTile(Icons.badge, "30 years ago"),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: customListTile(Icons.place, "India"),
                            )
                          ],
                        ),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape:const  RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                                primary:
                                    const Color.fromARGB(255, 252, 129, 15),
                                side: const BorderSide(
                                  color:
                                       Color.fromARGB(255, 252, 129, 15),
                                )),
                            onPressed: () {},
                            child: const Text("Apply"))
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ))),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
            const Padding(
              padding: EdgeInsets.only(left: 7),
              child: Text("Mary R. Arnold",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.whatsapp))
      ],
    );
  }
}

Widget customListTile(IconData icon, String title) {
  return Row(
    children: [
      Icon(icon, color: Colors.grey.shade400,size: 15,),
      Text(
        title,
        style: TextStyle(color: Colors.grey.shade400),
      )
    ],
  );
}

class CustomButtonTab extends StatefulWidget {
  const CustomButtonTab({Key? key}) : super(key: key);

  @override
  State<CustomButtonTab> createState() => _CustomButtonTabState();
}

class _CustomButtonTabState extends State<CustomButtonTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: [
          customButton(
            "Design",
            "images/img7.png",
            const Color.fromARGB(255, 252, 129, 15),
          ),
          customButton("Tech", "images/img6.png", Colors.white),
          customButton("Business", "images/img5.png", Colors.white),
        ],
      ),
    );
  }
}

Widget customButton(String text, String image, Color color) {
  return Container(
    margin: EdgeInsets.only(left: 5),
    child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white,
            elevation: 0,
            side: BorderSide(color: color),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        onPressed: () {},
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              child: Image.asset(image),
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.black),
            )
          ],
        )),
  );
}

class CustomScrollCard extends StatefulWidget {
  const CustomScrollCard({Key? key}) : super(key: key);

  @override
  State<CustomScrollCard> createState() => _CustomScrollCardState();
}

class _CustomScrollCardState extends State<CustomScrollCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: const [
          CustomCard(
            title: "Google LLC",
            location: "Pune Marahastra",
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: CustomCard(
              title: "Greeny",
              location: "Pune Marahastra",
            ),
          )
        ],
      ),
    );
  }
}
