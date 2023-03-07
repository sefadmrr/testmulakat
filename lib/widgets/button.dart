import 'package:flutter/material.dart';
import 'package:testmulakat/const/project_color.dart';
import 'package:testmulakat/const/project_padding.dart';
import 'package:testmulakat/const/project_text_style.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({Key? key, required this.title, required this.onPressed}) : super(key: key);
  final String title;
  final VoidCallback onPressed;

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: Padding(
        padding: ProjectPadding.buttonPadding,
        child: Text(widget.title,style: ProjectTextStyle.buttonTextStyle,),
      ),
      style: _buttonStyle(),
    );
  }

  ButtonStyle _buttonStyle() {
    return ButtonStyle(backgroundColor: MaterialStateProperty.all(ProjectColor.buttonBackgroundColor),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                )));
  }
}


