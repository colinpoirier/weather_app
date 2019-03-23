import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weather_app/generic_widgets/radial_position.dart';

class SlidingRadialList extends StatelessWidget {

  final RadialListViewModel radialList;
  final SlidingRadialListController controller;

  SlidingRadialList({
    this.radialList,
    this.controller,
  });

  List<Widget> _radialListItems(double height) {
    int index = 0;
    return radialList.items.map((RadialListItemViewModel viewModel) {
      final listItem = _radialListItem(
        viewModel,
        controller.getItemAngle(index),
        controller.getItemOpacity(index),
        height,
      );
      ++index;
      return listItem;
    }).toList();
  }

  Widget _radialListItem(RadialListItemViewModel viewModel, double angle, double opacity, double height) {
    return  Transform(
      transform:  Matrix4.translationValues(
        40.0,
        height,//MediaQuery.of(context).size.height/2,//334.0,
        0.0,
      ),
      child:  RadialPosition(
        radius: 140.0 + 75.0,
        angle: angle,
        child:  Opacity(
          opacity: opacity,
          child:  RadialListItem(
            listItem: viewModel,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  AnimatedBuilder(
      animation: controller,
      builder: (BuildContext context, Widget child) {
        return  Stack(
          children: _radialListItems(MediaQuery.of(context).size.height/2),
        );
      },
    );
  }
}

class SlidingRadialListController extends ChangeNotifier {

  final double firstItemAngle = -pi / 3;
  final double lastItemAngle = pi / 3;
  final double startSlidingAngle =  pi;

  final int itemCount;
  final AnimationController _slideController;
  final AnimationController _fadeController;
  final List<Animation<double>> _slidePositions;

  RadialListState _state = RadialListState.closed;
  // Completer<Null> onOpenedCompleter;
  // Completer<Null> onClosedCompleter;

  SlidingRadialListController({
    this.itemCount,
    vsync,
  }) : _slideController =  AnimationController(
        duration: const Duration(milliseconds: 1500),
        vsync: vsync,
      ),
      _fadeController =  AnimationController(
        duration: const Duration(milliseconds: 1500),
        vsync: vsync,
      ),
      _slidePositions = [] {
    _slideController
      ..addListener(() => notifyListeners())
      ..addStatusListener((AnimationStatus status) {
        switch (status) {
          case AnimationStatus.forward:
            _state = RadialListState.slidingOpen;
            notifyListeners();
            break;
          case AnimationStatus.completed:
            _state = RadialListState.open;
            notifyListeners();
            //onOpenedCompleter.complete();
            break;
          case AnimationStatus.reverse:
            // _state = RadialListState.fadingOut;
            // notifyListeners();
            // break;
          case AnimationStatus.dismissed:
            break;
        }
      });

    _fadeController
      ..addListener(() => notifyListeners())
      ..addStatusListener((AnimationStatus status) {
        switch (status) {
          case AnimationStatus.forward:
            _state = RadialListState.slidingOut;//.fadingOut;
            notifyListeners();
            break;
          case AnimationStatus.completed:
            _state = RadialListState.closed;
            // _slideController.value = 0.0;
            // _fadeController.value = 0.0;
            notifyListeners();
            //onClosedCompleter.complete();
            break;
          case AnimationStatus.reverse:
            _state = RadialListState.fadingOut;
            notifyListeners();
            break;
          case AnimationStatus.dismissed:
            break;
        }
      });

    final delayInterval = 0.1;
    final slideInterval = 0.5;
    final angleDeltaPerItem = (lastItemAngle - firstItemAngle) / (itemCount - 1);
    for (var i = 0; i < itemCount; ++i) {
      final start = delayInterval * i;
      final end = start + slideInterval;

      final endSlidingAngle = firstItemAngle + (angleDeltaPerItem * i);

      _slidePositions.add(
         Tween(
          begin: startSlidingAngle,
          end: endSlidingAngle,
        ).animate(
           CurvedAnimation(
            parent: _slideController,
            curve:  Interval(start, end, curve: Curves.easeInOut),
          )
        )
      );
    }
    for (var i = 0; i < itemCount; ++i) {
      final start = delayInterval * i;
      final end = start + slideInterval;

      final endSlidingAngle = firstItemAngle + (angleDeltaPerItem * i);

      _slidePositions.add(
         Tween(
          begin: endSlidingAngle,//startSlidingAngle,
          end: - pi,//startSlidingAngle,//endSlidingAngle,
        ).animate(
           CurvedAnimation(
            parent: _fadeController,
            curve:  Interval(start, end, curve: Curves.easeInOut),
          )
        )
      );
    }
  }

  @override
  void dispose() {
    _slideController.dispose();
    _fadeController.dispose();
    super.dispose();
  }

  double getItemAngle(int index) {
    if(_state==RadialListState.slidingOut || _state == RadialListState.fadingOut)
      return _slidePositions[index+itemCount].value;
    else{
      return _slidePositions[index].value;
    }
  }

  double getItemOpacity(int index) {
    switch (_state) {
      case RadialListState.closed:
        return 0.0;
      case RadialListState.slidingOpen:
        //return _slideController.value;
      case RadialListState.open:
        return 1.0;
      case RadialListState.fadingOut:
       // return (1.0 - _fadeController.value);
      default:
        return 1.0;
    }
  }

  Future open() async {
    //if (_state == RadialListState.closed) {
      await _slideController.forward(from: 0.0);
      // onOpenedCompleter =  Completer();
      // return onOpenedCompleter.future;
    //}
    //return null;
  }

  Future close() async {
    //if (_state == RadialListState.open) {
      await _fadeController.forward(from: 0.0);
      // onClosedCompleter =  Completer();
      // return onClosedCompleter.future;
    //}
    //return null;
  }
  Future swipeUpOut() async{
    await _fadeController.forward(from: 0.0);
  }
  Future swipeUpIn() async{
    await _slideController.forward(from: 0.0);
  }
  Future swipeDownOut() async{
    await _slideController.reverse(from: 1.0);
  }
  Future swipeDownIn() async{
    await _fadeController.reverse(from: 1.0);
  }


  Future swipeUp() async{
    await _fadeController.forward(from: 0.0);
    await _slideController.forward(from: 0.0);
  }
  Future swipeDown() async{
    await _slideController.reverse(from: 1.0);
    // _fadeController.value = 1.0;
    // notifyListeners();
    await _fadeController.reverse(from: 1.0);
  }

}

enum RadialListState {
  closed,
  slidingOpen,
  slidingOut,
  open,
  fadingOut,
}

class RadialListItem extends StatelessWidget {

  final RadialListItemViewModel listItem;

  RadialListItem({
    this.listItem,
  });

  @override
  Widget build(BuildContext context) {
    final circleDecoration = listItem.isSelected
        ?  BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          )
        :  BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            border:  Border.all(
              color: Colors.white,
              width: 2.0,
            ),
          );

    return  Transform(
      transform:  Matrix4.translationValues(-30.0, -30.0, 0.0),
      child:  Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
           Container(
            width: 60.0,
            height: 60.0,
            decoration: circleDecoration,
            child:  Padding(
              padding: const EdgeInsets.all(7.0),
              // child:  Image(
              //   image: listItem.icon,
              //   color: listItem.isSelected ? const Color(0xFF6688CC) : Colors.white
              // ),
              child: Icon(listItem.icon,
              color: listItem.isSelected ? Colors.blue[900] : Colors.white,
              size: 35,
              ),
            ),
          ),
          Container(
            width: 100,
            height: 60,
            padding: const EdgeInsets.only(left: 5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  listItem.title,
                  style:  TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                Text(
                  listItem.subtitle,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  softWrap: true,
                  style:  TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class RadialListViewModel {
  final List<RadialListItemViewModel> items;

  RadialListViewModel({
    this.items = const [],
  });
}

class RadialListItemViewModel {
  //final ImageProvider icon;
  final IconData icon;
  final String title;
  final String subtitle;
  final bool isSelected;

  RadialListItemViewModel({
    this.icon,
    this.title = '',
    this.subtitle = '',
    this.isSelected = false,
  });
}