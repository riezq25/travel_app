import 'package:flutter/cupertino.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/home_bg.png",
          height: 315,
          fit: BoxFit.cover,
        )
      ],
    );
  }
}
