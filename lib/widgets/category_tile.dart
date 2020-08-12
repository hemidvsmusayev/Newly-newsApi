import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final imageUrl, categoryName;
  CategoryTile({this.imageUrl, this.categoryName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.only(right: 12),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl, width: 120, height: 60, fit: BoxFit.cover)),
            Container(
              alignment: Alignment.center,
              width: 120, height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.black26,
              ),
              child: Text(
                categoryName,
                style: TextStyle(color: Colors.white,
                fontSize: 14, fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}