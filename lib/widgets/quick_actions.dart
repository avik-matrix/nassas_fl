import 'package:flutter/material.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/images/mobilecamera.png'),
            )
          ],
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('assets/images/mobilechat.png'),
            )
          ],
        ),
      ],
    );
  }
}
