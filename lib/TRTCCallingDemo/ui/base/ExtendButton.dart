import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExtendButton extends StatelessWidget {
  ExtendButton(
      {this.imgUrl,
      this.tips,
      this.onTap,
      this.imgHieght,
      this.imgColor,
      Key key})
      : super(key: key);
  final String imgUrl;
  final int imgHieght;
  final Color imgColor;
  final String tips;
  final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        this.onTap();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imgUrl,
            height: (imgHieght != null && imgHieght > 0) ? this.imgHieght : 52,
            color: imgColor != null ? imgColor : null,
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              tips,
              style: TextStyle(fontSize: 12),
            ),
          ),
        ],
      ),
    );
  }
}
