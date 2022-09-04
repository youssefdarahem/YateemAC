import 'package:flutter/material.dart';

import '../constants.dart';

/*
* this widget can be used to create
* tall rectangular buttons with icons and text,
* Parameters:
* icon : takes a Widget any type can be provided (defaults SVG Widget)
* text : takes a String to display under the icon
* on pressed : takes a function default is set to null
* isGradient : boolean that is set to true witch applies a gradient color 
*  else wise will just make it white
*/

class RectangularButton extends StatelessWidget {
  final Widget icon;
  final String text;
  final VoidCallback onPressed;
  final bool? isGradient;

  const RectangularButton(
      {Key? key,
      required this.icon,
      required this.text,
      required this.onPressed,
      this.isGradient = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle? style = isGradient == true
        ? Theme.of(context).textTheme.bodyText1
        : Theme.of(context)
            .textTheme
            .bodyText1
            ?.copyWith(color: const Color.fromARGB(255, 3, 159, 156));
    return Center(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 160,
          width: 140,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: isGradient == false
                  ? [Colors.white, Colors.white]
                  : mainColorsGradients,
            ),
            // color: isGradient == true ? Colors.yellow : null,
            border: Border.all(
                color: const Color.fromARGB(255, 3, 159, 156), width: 2),
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Center(
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Flexible(flex: 2, fit: FlexFit.tight, child: icon),
                  // const Spacer(),
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      width: 100,
                      child: Text(
                        text,
                        softWrap: true,
                        textAlign: TextAlign.center,
                        style: style,
                      ),
                    ),
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
