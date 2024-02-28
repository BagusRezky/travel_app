import 'package:flutter/material.dart';
import 'package:travel_app/components/detailPage/backgroundimage.dart';
import 'package:travel_app/components/detailPage/deskripsi.dart';
import 'package:travel_app/components/detailPage/facilities.dart';
import 'package:travel_app/components/detailPage/price.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            BackgroundImage(),
            ContentDetail(),
            Facilities(),
            Price(),
          ],
        ),
      ),
    );
  }
}
