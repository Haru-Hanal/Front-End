import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width;

    return Positioned(
      left: 21,
      top: 244,
      child: Container(
        width: containerWidth * 0.9,
        height: 48.80,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Material(
                child: Container(
                  width: containerWidth * 0.9,
                  height: 48.80,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF3F2E9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.01),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Medicine & Health Products',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HgihSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double containerWidth = MediaQuery.of(context).size.width;

    return Positioned(
      left: 21,
      top: 104,
      child: Container(
        width: containerWidth * 0.9,
        height: 48.80,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Material(
                child: Container(
                  width: containerWidth * 0.9,
                  height: 48.80,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF3F2E9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.01),
                    ),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Medicine & Health Products',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
