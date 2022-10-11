import 'package:flutter/material.dart';

class UpperPart extends StatefulWidget {
  const UpperPart({
    Key? key,
  }) : super(key: key);

  @override
  State<UpperPart> createState() => _UpperPartState();
}

int index = 0;

class _UpperPartState extends State<UpperPart> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: PageView.builder(
        itemCount: 3,
        onPageChanged: (value) {
          setState(() {
            index = value;
          });
        },
        itemBuilder: (context, index) => Image.asset(
          'assets/images/OnBoardImage.png',
        ),
      ),
    );
  }
}
