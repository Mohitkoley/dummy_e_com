import 'package:e_com/screen/detail_page.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                          index: index,
                        )));
          },
          child: Container(
            height: 175,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image${index + 1}.jpg"),
                    //center slice so that image head should be visible to user
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter),
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text("Woman's Sweatshirt"),
        Text(
          "€ 18,00",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ]),
    );
  }
}
