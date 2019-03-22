import 'dart:async';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:weather_app/forecast/background/background_with_rings.dart';
import 'package:weather_app/generic_widgets/bloc_provider.dart';
import 'package:weather_app/generic_widgets/vertical_slider.dart';
import 'package:weather_app/generic_widgets/weather_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RadarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List coords = WeatherInherited.of(context).settingsBloc.coordsOut.value;
    return Stack(
      children: <Widget>[
        BackgroundWithRings(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Icon(Icons.map),
            centerTitle: false,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.close),
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          body: RadarBody(
            lat: coords[0],
            long: coords[1],
          ),
        ),
      ],
    );
  }
}

class RadarBody extends StatefulWidget {
  final double lat;
  final double long;

  RadarBody({Key key, this.lat, this.long}) : super(key: key);

  _RadarBodyState createState() => _RadarBodyState();
}

class _RadarBodyState extends State<RadarBody> {
  double mapDisplayHeight;
  double mapDisplayWidth;
  double opacity = 1.0;
  bool end = false;
  bool init = true;
  ScrollController scrollController = ScrollController();
  Completer<GoogleMapController> _controller = Completer();
  LatLng latLng;

  @override
  void initState() {
    latLng = LatLng(widget.lat, widget.long);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (init) {
      WeatherInherited.of(context).bloc.eventIn.add(GetRadar(lat: widget.lat, long: widget.long));
      init = false;
      print(MediaQuery.of(context).size);
      mapDisplayHeight =
          MediaQuery.of(context).size.height.floorToDouble() - 150;
      mapDisplayWidth = MediaQuery.of(context).size.width.floorToDouble();
    }
    super.didChangeDependencies();
  }

  Future animate() async {
    end = false;
    for (int i = 1; !end; i++) {
      scrollController.animateTo(mapDisplayHeight * (i % 6),
          duration: Duration(milliseconds: 1), curve: Curves.linear);
      await Future.delayed(Duration(milliseconds: 500));
      i > 5 ? i = 0 : i = i;
    }
  }

  void stop() {
    end = true;
    scrollController.animateTo(0,
        duration: Duration(milliseconds: 1), curve: Curves.linear);
  }

  Future<void> zoomIn() async {
    stop();
    WeatherInherited.of(context).bloc.eventIn.add(RadarZoom(direction: 'in'));
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: latLng,
          zoom: WeatherInherited.of(context).bloc.zoomOut.value * 1.0,
        ),
      ),
    );
  }

  Future<void> zoomOut() async {
    stop();
    WeatherInherited.of(context).bloc.eventIn.add(RadarZoom(direction: 'out'));
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: latLng,
          zoom: WeatherInherited.of(context).bloc.zoomOut.value * 1.0,
        ),
      ),
    );
  }

  void opacityChange(double value) {
    opacity = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mapDisplayHeight,
      width: mapDisplayWidth,
      child: Stack(
        children: <Widget>[
          GoogleMap(
            mapType: MapType.terrain,
            initialCameraPosition: CameraPosition(target: latLng, zoom: 8),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
            markers: Set<Marker>.from([Marker(
              icon: BitmapDescriptor.defaultMarker,
              markerId: MarkerId('center'),
              position: latLng,
            )]),
          ),
          AerisRadar(
            scrollController: scrollController,
            opacity: opacity,
          ),
          MapInterfaceOverlay(
            zoomIn: zoomIn,
            zoomOut: zoomOut,
            stop: stop,
            animate: animate,
            onChanged: opacityChange,
            opacity: opacity,
          ),
        ],
      ),
    );
  }
}

class AerisRadar extends StatelessWidget {
  final ScrollController scrollController;
  final double opacity;

  AerisRadar({Key key, this.scrollController, this.opacity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      controller: scrollController,
      child: Opacity(
        opacity: opacity,
        child: StreamBuilder(
          stream: WeatherInherited.of(context).bloc.radarOut,
          initialData: null,
          builder: (context, AsyncSnapshot<List<Widget>> snapshot) {
            return Column(
              verticalDirection: VerticalDirection.up,
              children: <Widget>[]..addAll(snapshot.hasData
                  ? snapshot.data
                  : [CircularProgressIndicator()]),
            );
          },
        ),
      ),
    );
  }
}

class MapInterfaceOverlay extends StatelessWidget {
  final VoidCallback zoomIn;
  final VoidCallback zoomOut;
  final VoidCallback stop;
  final VoidCallback animate;
  final double opacity;
  final Function onChanged;
  final Color blue = Colors.blue[900];

  MapInterfaceOverlay({
    Key key,
    this.zoomIn,
    this.zoomOut,
    this.stop,
    this.animate,
    this.opacity,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        StreamBuilder(
          stream: WeatherInherited.of(context).bloc.zoomOut,
          initialData: 8,
          builder: (context, AsyncSnapshot<int> snapshot) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: blue,
                  child: Icon(Icons.zoom_in),
                  onPressed: snapshot.data == 15 ? null : zoomIn,
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: blue,
                  child: Icon(Icons.zoom_out),
                  onPressed: snapshot.data == 1 ? null : zoomOut,
                ),
              ],
            );
          },
        ),
        Expanded(
          child: Container(),
        ),
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                RotatedBox(
                  quarterTurns: 3,
                  child: VerticalSlider(
                    activeColor: blue,
                    value: opacity,
                    onChanged: onChanged,
                  ),
                ),
                Icon(
                  MdiIcons.opacity,
                  color: blue,
                ),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: blue,
              child: Icon(Icons.play_arrow),
              onPressed: animate,
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: blue,
              child: Icon(Icons.stop),
              onPressed: stop,
            ),
          ],
        ),
      ],
    );
  }
}
