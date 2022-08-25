import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          // borderRadius: BorderRadius.only(
          //     bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
          ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.all(00),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 50,
                    child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: Container(
                              padding: EdgeInsets.all(10),
                              
                                child: Image.asset("images/filter.png"),),
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search',
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none)),
                    padding: const EdgeInsets.only(left: 5, top: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 0,
                            offset: Offset(0, 0),
                          )
                        ]),
                  )),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ))
        ],
      ),
    );
  }
}