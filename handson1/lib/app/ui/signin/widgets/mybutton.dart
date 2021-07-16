import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? labelText;
  final void Function()? onTap;
  final Color? color;
  MyButton({
    this.color = Colors.black,
    @required this.onTap,
    @required this.labelText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 60,
        right: 60,
        top: 10,
        bottom: 20,
      ),
      child: InkWell(
        child: Container(
          width: double.infinity,
          height: 55,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(64),
          ),
          child: Center(
              child: Text(
            labelText!,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontSize: 20,
            ),
          )),
        ),
        onTap: onTap,
      ),
    );
  }
}
