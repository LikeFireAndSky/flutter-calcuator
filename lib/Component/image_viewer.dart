import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child : Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children : <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child : Image.asset('image/main_image.jpg', fit: BoxFit.cover)
            ),
            const Padding(padding: EdgeInsetsDirectional.only(top: 26), child :  Text('CALCULATOR :\n WHAT IS YOUR ANSWER', textAlign: TextAlign.center,)),
          ],
      ),
    );
  }
}