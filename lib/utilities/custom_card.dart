import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  final String title;
  final String location;
  const CustomCard({Key? key, required this.title, required this.location})
      : super(key: key);

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(20),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "images/img8.png",
                width: 30,
                height: 30,
              ),
              const Icon(Icons.bookmark, color: Colors.orange),
            ],
          ),
          Text(
            widget.title,
            style: TextStyle(color: Colors.grey.shade400),
          ),
          const Text("Sr. UX Designer",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          Row(
            children: [
               Icon(Icons.place , color: Colors.grey.shade400,),
              Text(widget.location , style: TextStyle(color: Colors.grey.shade400), ),
            ],
          ),
          const SizedBox(height: 10,),
          Container(
            padding:const EdgeInsets.all(10),
            decoration:const BoxDecoration(
              color: Color.fromARGB(255, 230, 229, 229),
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
            child:const Text("Fulltime"),
          ),
           const SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("2 Days ago" , style: TextStyle(color: Colors.grey.shade400), ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 252, 129, 15),
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  )
                ),
                onPressed: (){},
                 child:const Text("Apply")
                 )
            ],
           )
        ],
      ),
    );
  }
}
