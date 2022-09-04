import 'package:flutter/material.dart';

/*
* draws the images with the text on the bottom. 
* Parameters 
*  String Text : text that shows under the image
*  String imagePath : path to the image 
 */
class ImageWithText extends StatelessWidget {
  final String text;
  final String imagePath;

  const ImageWithText({Key? key, required this.text, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  imagePath,
                ),
              ),
            ),
          ),
          Positioned(
            // top: 50.0,
            bottom: 0.0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 40,
              color: Colors.black.withOpacity(0.5),
            ),
          ),
          Positioned(
            bottom: 12.0,
            left: 5.0,
            child: Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  ?.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
