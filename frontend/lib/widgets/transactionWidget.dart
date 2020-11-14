import 'package:flutter/material.dart';

class TransactionItemWidget extends StatelessWidget {
  final size;
  TransactionItemWidget({this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 110,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.white,
      ),
    );
  }
}
