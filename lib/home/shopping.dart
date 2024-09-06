import 'package:flutter/material.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

int indexCategory = 0;

class _ShoppingState extends State<Shopping> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        topHeader(),
        const SizedBox(
          height: 30,
        ),
        title(),
        const SizedBox(
          height: 21,
        ),
        searchBar(),
        const SizedBox(
          height: 30,
        ),
        categorySelection(),
      ],
    );
  }

  Padding categorySelection() {
    // list of times
    List list = ["All", "Fruits", "Vegetables", "Grocery"];
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: SizedBox(
        height: 35,
        child: ListView.builder(
            itemCount: list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: Text(
                      list[index],
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }

  Container searchBar() {
    return Container(
      height: 55,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      padding: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color: Colors.green[100], borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.green,
                    ),
                    hintText: "Sarch Food",
                    hintStyle: TextStyle(color: Colors.black))),
          ),
          Material(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.insert_emoticon_sharp,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding title() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            " Hi Khusbu",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.green, fontSize: 18),
          ),
          Text(
            " Find your Food",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 34),
          ),
        ],
      ),
    );
  }

  Padding topHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        children: [
          // For menu
          Material(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.menu_open_rounded,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          const Spacer(),
          //   For location
          const Icon(
            Icons.location_on_sharp,
            size: 30,
          ),
          const Text(
            "SKT  Bangladesh",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),
          ),
          const Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "asset/Image/sir.png",
              height: 40,
              width: 40,
            ),
          ),

        ],
      ),
    );
  }
}
