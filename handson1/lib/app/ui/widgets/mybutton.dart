import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? labelText;
  final void Function()? onTap;
  final Color? buttonColor;
  final Color? textColor;
  MyButton({
    this.textColor = Colors.white,
    this.buttonColor = Colors.black,
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
            boxShadow: [
              BoxShadow(
                color: Color(0xff080808),
                blurRadius: 5,
              ),
            ],
            color: buttonColor,
            borderRadius: BorderRadius.circular(64),
          ),
          child: Center(
              child: Text(
            labelText!,
            style: TextStyle(
              color: textColor,
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
