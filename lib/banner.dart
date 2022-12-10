import 'package:flutter/material.dart';

import 'constants.dart';
class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.25,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Image.asset('assets/images/cat.png'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 45),
              child: Column(children: const [
                Text(
                  'Buy Pet',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                Text('Check and Pick the right one',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16)),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
