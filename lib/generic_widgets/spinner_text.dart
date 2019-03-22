import 'package:flutter/material.dart';
import 'package:weather_app/generic_widgets/vertical_dragger.dart';

class SpinnerText extends StatefulWidget {

  final String text;
  final SlideDirection slideDirection;

  SpinnerText({
    this.slideDirection = SlideDirection.none,
    this.text = '',
  });

  @override
  _SpinnerTextState createState() =>  _SpinnerTextState();
}

class _SpinnerTextState extends State<SpinnerText> with SingleTickerProviderStateMixin {

  String topText = '';
  //String bottomText = '';
  String middleText = '';
  AnimationController _spinTextAnimationController;
  Animation<double> _spinAnimation;

  @override
  void initState() {
    super.initState();

    //bottomText = widget.text;
    middleText = widget.text;

    _spinTextAnimationController =  AnimationController(
      duration: const Duration(milliseconds: 750),
      vsync: this,
    )
    ..addListener(() => setState(() {}))
    ..addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          if(widget.slideDirection==SlideDirection.topToBottom){
            middleText = topText;
            topText = '';
            _spinTextAnimationController.value = 0.0;
          }else if (widget.slideDirection==SlideDirection.bottomToTop){
            // middleText = bottomText;
            // bottomText = '';
            //_spinTextAnimationController.value = 0.0;
          }
        });
      }
    });

    _spinAnimation =  CurvedAnimation(
      parent: _spinTextAnimationController,
      curve: Curves.elasticInOut,//widget.slideDirection == SlideDirection.bottomToTop ? Curves.elasticOut : Curves.elasticIn,
    );
  }

  @override
  void dispose() {
    _spinTextAnimationController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(SpinnerText oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.text != oldWidget.text) {
      if(widget.slideDirection == SlideDirection.topToBottom){
      // Need to spin  value.
        topText = widget.text;
        _spinTextAnimationController.forward(from: 0.0);
      } else if (widget.slideDirection==SlideDirection.bottomToTop){
        topText = middleText;
        middleText = widget.text;
        _spinTextAnimationController.reverse(from: 1.0);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return  ClipRect(
      clipper:  RectClipper(),
      child:  Stack(
        children: <Widget>[
           FractionalTranslation(
            translation:  Offset(0.0, _spinAnimation.value - 1.0),
            child:  Text(
              topText,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style:  TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
           FractionalTranslation(
            translation:  Offset(0.0, _spinAnimation.value),
            child:  Text(
              middleText,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style:  TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          //  FractionalTranslation(
          //   translation:  Offset(0.0, _spinAnimation.value + 1.0),
          //   child:  Text(
          //     bottomText,
          //     maxLines: 1,
          //     overflow: TextOverflow.ellipsis,
          //     style:  TextStyle(
          //       color: Colors.white,
          //       fontSize: 16.0,
          //     ),
          //   ),
          // ),          
        ],
      ),
    );
  }
}

class RectClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return  Rect.fromLTWH(0.0, 0.0, size.width, size.height);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    return true;
  }

}