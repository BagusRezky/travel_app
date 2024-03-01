import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 335,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Gambar
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/detail image.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Container putih
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              height: 30,
              width: 30,
              padding: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              // Ikon arrow back
              child: const Center(
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 17,
                ),
              ),
            ),
          ),
          // Container love
          Positioned(
            bottom: -15,
            right: 20,
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(
                Icons.favorite,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
