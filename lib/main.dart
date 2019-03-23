import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/forecast/app_bar.dart';
import 'package:weather_app/forecast/forecast.dart';
import 'package:weather_app/forecast/forecast_list.dart';
import 'package:weather_app/forecast/radar.dart';
import 'package:weather_app/forecast/radial_list.dart';
import 'package:weather_app/forecast/settings_page.dart';
import 'package:weather_app/forecast/weather_details.dart';
import 'package:weather_app/forecast/week_drawer.dart';
import 'package:weather_app/generic_widgets/bloc_provider.dart';
import 'package:weather_app/generic_widgets/date_format.dart';
import 'package:weather_app/generic_widgets/map_to_icons.dart';
import 'package:weather_app/generic_widgets/sliding_drawer.dart';
import 'package:weather_app/generic_widgets/vertical_dragger.dart';
import 'package:weather_app/generic_widgets/weather_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.blue[900],
    ));

    return BlocProvider(
      child: MaterialApp(
        //checkerboardOffscreenLayers: true,
        //checkerboardRasterCacheImages: true,
        title: 'Weather',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.blue[900],
          highlightColor: Colors.white,
          accentColor: Colors.white,
          brightness: Brightness.dark 
          // iconTheme: IconThemeData(color: Colors.white),
          // textTheme: Typography.whiteCupertino,
          // typography: Typography.d
        ),
        home: MyHomePage(),
      ),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  OpenableController openableController;
  SlidingRadialListController slidingListController;
  List<String> days = [];
  String selectedDay;
  StreamController<VerticalDragUpdate> verticalDragUpdateStream;
  double verticalSlidePercent = 0.0;
  int daysIndex = 0;
  bool enabled = false;
  bool init = true;

  SlideDirection slideDirection = SlideDirection.none;

  _MyHomePageState() {
    verticalDragUpdateStream = StreamController<VerticalDragUpdate>();

    verticalDragUpdateStream.stream.listen((VerticalDragUpdate event) {
      slideDirection = event.direction;
      verticalSlidePercent = event.slidePercent;
      if (verticalSlidePercent == -1) {
        swipeDownHandler();
      } else if (verticalSlidePercent == 1) {
        swipeUpHandler();
      }
      setState(() {});
    });
  }

  Future swipeDownHandler() async {
    if (daysIndex < days.length - 1) {
      enabled = false;
      await slidingListController.swipeDownOut();
      setState(() {
        daysIndex++;
        selectedDay = days[daysIndex];
      });
      // update data
      await slidingListController.swipeDownIn();
      enabled = true;
    }
  }

  Future swipeUpHandler() async {
    if (daysIndex > 0) {
      enabled = false;
      await slidingListController.swipeUpOut();
      setState(() {
        daysIndex--;
        selectedDay = days[daysIndex];
      });
      // update data
      await slidingListController.swipeUpIn();
      enabled = true;
    }
  }

  @override
  void initState() {
    super.initState();
    populateDays();
    openableController = OpenableController(
      vsync: this,
      openDuration: const Duration(milliseconds: 250),
    )..addListener(() => setState(() {}));

    slidingListController = SlidingRadialListController(
      itemCount: forecastRadialList.items.length,
      vsync: this,
    )..open();
    enabled = true;
    selectedDay = days[daysIndex];
    // WidgetsBinding.instance.addPostFrameCallback((_)=>print(WeatherInherited.of(context).settingsBloc.locStringOut.value+'m'));
  }

  void populateDays(){    
    DateTime time = DateTime.now();
    for(int i = 0; i < 7; i++){
      DateTime nextDay = time.add(Duration(days: i));
      days.add('${DateMap.weekday[nextDay.weekday]}, ${DateMap.month[nextDay.month]} ${nextDay.day}');
    }
  }

  @override
  void didChangeDependencies() {
    if(init){
      WeatherInherited.of(context).bloc.dimemsionsIn.add([
        MediaQuery.of(context).size.height-150,
        MediaQuery.of(context).size.width,
      ]);
      // slidingListController.open();
      // print(WeatherInherited.of(context).settingsBloc.locStringOut.value);
      init = false;
    }
    super.didChangeDependencies();
  }


  @override
  void dispose() {
    verticalDragUpdateStream.close();
    super.dispose();
  }

  void thing() {
    if (enabled) {
      // var bloc =  WeatherInherited.of(context).bloc;
      // var settingsBloc = WeatherInherited.of(context).settingsBloc;
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context)=>WeatherDetails(
            initScrollOffset: daysIndex,
            // apixuWeather: bloc.apixuCache[settingsBloc.locStringOut.value],
            // darkSkyWeather: bloc.darkSkyCache[settingsBloc.locStringOut.value],
          ),
        ),
      );
    }
  }

  List<WeatherTap> _buildWeatherTaps(){
    List<WeatherTap> wts = [];
    const List<double> xs = [-0.31, 0.16, 0.33, 0.16, -0.33];
    const List<double> ys = [-1, -0.57, 0, 0.57, 1];
    for(int i = 0; i < 5; i++){
      wts.add(WeatherTap(
        x: xs[i],
        y: ys[i],
        onTap: thing,
      ));
    }
    return wts;
  }

  String hourString(int hour){
    String hourst;
    if(hour  % 12 == 0){
      hourst = '12';
    } else {
      hourst = '${hour % 12}';
    }
    return hourst;
  }

  // RadialListViewModel _populateRadialList(){
  //   var bloc =  WeatherInherited.of(context).bloc;
  //   var settingsBloc = WeatherInherited.of(context).settingsBloc;
  //   var forecastDay = bloc.apixuCache[settingsBloc.locStringOut.value].forecast.forecastday[i];
  //   const List<int> timeValues = [9, 13, 16, 19, 22];
  //   List<RadialListItemViewModel> rlivs = [];
  //   for(int j = 0; j < timeValues.length; j++){
  //     int apixuCurrentIconCode = forecastDay.hour[timeValues[j]].condition.code;
  //     int day = forecastDay.hour[timeValues[j]].isDay;
  //     DateTime radialHour = DateTime.fromMillisecondsSinceEpoch(forecastDay.hour[timeValues[j]].timeEpoch * 1000);
  //     String hour = hourString(radialHour.hour);
  //     String min = radialHour.minute > 9 ? '${radialHour.minute}' : '0${radialHour.minute}';
  //     RadialListItemViewModel rliv = RadialListItemViewModel(
  //       icon: MapIcons.getWeatherIcon(apixuCurrentIconCode, day),
  //       title:  hour+ ':' + min + '${radialHour.hour < 12 ? ' AM' : ' PM'}',
  //       subtitle: forecastDay.hour[timeValues[j]].condition.text,
  //     );
  //     rlivs.add(rliv);
  //   }
  //   return RadialListViewModel(items: rlivs);
  // }

  RadialListViewModel _populateRadialList(List<Map> data, String locString){
    // var settingsBloc = WeatherInherited.of(context).settingsBloc;
    var forecastDay = data[0][locString].forecast.forecastday[daysIndex];
    const List<int> timeValues = [6, 10, 14, 18, 22];
    List<RadialListItemViewModel> rlivs = [];
    for(int j = 0; j < timeValues.length; j++){
      int apixuCurrentIconCode = forecastDay.hour[timeValues[j]].condition.code;
      int day = forecastDay.hour[timeValues[j]].isDay;
      //DateTime radialHour = DateTime.fromMillisecondsSinceEpoch(forecastDay.hour[timeValues[j]].timeEpoch * 1000);
      DateTime radialHour = DateTime.parse(forecastDay.hour[timeValues[j]].time);
      String hour = hourString(radialHour.hour);
      String min = radialHour.minute > 9 ? '${radialHour.minute}' : '0${radialHour.minute}';
      RadialListItemViewModel rliv = RadialListItemViewModel(
        icon: MapToIcons.getWeatherIcon(apixuCurrentIconCode, day),
        title:  hour+ ':' + min + '${radialHour.hour < 12 ? ' AM' : ' PM'}',
        subtitle: forecastDay.hour[timeValues[j]].condition.text,
      );
      rlivs.add(rliv);
    }
    return RadialListViewModel(items: rlivs);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          StreamBuilder(
            stream: WeatherInherited.of(context).settingsBloc.locStringOut,
            initialData: null,
            builder: (context, AsyncSnapshot<String> locSnapshot){
              return StreamBuilder(
                stream: WeatherInherited.of(context).bloc.mapCacheOut,
                initialData: null,
                builder: (context, AsyncSnapshot<List<Map<String, dynamic>>> snapshot){
                  return Forecast(
                    radialList: snapshot.hasData && locSnapshot.hasData
                        ? snapshot.data[0][locSnapshot.data] != null && snapshot.data[1][locSnapshot.data] != null
                            ? _populateRadialList(snapshot.data, locSnapshot.data)
                            : forecastRadialList
                        : forecastRadialList,
                    slidingListController: slidingListController,
                    daysIndex: daysIndex,
                  );
                },
              );
            },
          ),
          Center(
            child: Container(
              height: 435,
              //color: Colors.white.withOpacity(0.3),
              child: Stack(
                children: _buildWeatherTaps(),
              ),
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            child: ForecastAppBar(
              onDrawerArrowTap: openableController.open,
              selectedDay: selectedDay,
              slideDirection: slideDirection,
            ),
          ),
          Align(
            alignment: Alignment(1, 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () async {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SettingsPage(),
                    ),
                  );
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment(-1, 1),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(
                  Icons.map,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: (){
                  WeatherInherited.of(context).bloc.eventIn.add(ZoomReset());
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => RadarPage(),
                    ),
                  );
                },
              ),
            ),
          ),          
          SlidingDrawer(
            openableController: openableController,
            drawer: WeekDrawer(
              days: days,
              onRefresh: ()=>openableController.close(),
              onDaySelected: (String title, int index) async {
                if(enabled){
                  openableController.close();
                  if (index > daysIndex) {
                    await slidingListController.swipeDownOut();
                    setState(() {
                      selectedDay = title.replaceAll('\n', ', ');
                      daysIndex = index;
                      slideDirection = SlideDirection.topToBottom;
                    });
                    await slidingListController.swipeDownIn();
                  } else if (index < daysIndex) {
                    await slidingListController.swipeUpOut();
                    setState(() {
                      selectedDay = title.replaceAll('\n', ', ');
                      daysIndex = index;
                      slideDirection = SlideDirection.bottomToTop;
                    });
                    await slidingListController.swipeUpIn();
                  }
                }
              },
            ),
          ),
          VerticalDragger(
            verticalDragUpdateStream: verticalDragUpdateStream,
          )
        ],
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     print('pressed');
      //     WeatherInherited.of(context).bloc.getApixuForecast(41.87,-78.34);
      //     //WeatherInherited.of(context).bloc.getDarkSkyForecast(89, 89);
      //   },
      // ),
    );
  }
}

class WeatherTap extends StatelessWidget {
  final VoidCallback onTap;
  final double x;
  final double y;
  const WeatherTap({
    Key key,
    this.x,
    this.y,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(x, y),
      child: Container(
        color: Colors.transparent,
        width: 60,
        height: 60,
        child: GestureDetector(
          onTap: onTap,
        ),
      ),
    );
  }
}
