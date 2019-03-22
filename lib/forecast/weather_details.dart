import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:weather_app/forecast/background/background_with_rings.dart';
import 'package:weather_app/generic_widgets/bloc_provider.dart';
import 'package:weather_app/generic_widgets/date_format.dart';
import 'package:weather_app/generic_widgets/map_to_icons.dart';
import 'package:weather_app/models/apixu/apixu_weather.dart';
import 'package:weather_app/models/darksky/darksky_weather.dart';

class WeatherDetails extends StatelessWidget {

  // final ApixuWeather apixuWeather;
  // final DarkSkyWeather darkSkyWeather;
  final String data;
  final int initScrollOffset;

  const WeatherDetails({Key key, this.data, this.initScrollOffset = 0}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final double _initScrollOffset = initScrollOffset == 0 ? 0.0 : 376.0 + (initScrollOffset - 1) * 296.0;
    final bloc = WeatherInherited.of(context).bloc;
    final settingsBloc = WeatherInherited.of(context).settingsBloc;
    final ScrollController controller = ScrollController(initialScrollOffset: _initScrollOffset);
    return Stack(
      children: <Widget>[
        BackgroundWithRings(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            // title: Text(
            //   'Weather Details',
            //   style: TextStyle(color: Colors.white),
            // ),
            title: Icon(MdiIcons.calendarRange),
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
          // body: ListView.builder(
          //   cacheExtent: 1800.0,
          //   key: PageStorageKey(bloc.apixuResult.location.name),
          //   itemCount: bloc.apixuResult.forecast.forecastday.length,
          //   itemBuilder: (context, index){
          //     return index == 0
          //     ? WeatherDetailItem(
          //       key: PageStorageKey(bloc.apixuResult.forecast.forecastday[index].date),
          //       forecastDay: bloc.apixuResult.forecast.forecastday[index],
          //       minutely: bloc.darkSkyResult.minutely,
          //     )
          //     : WeatherDetailItem(
          //       key: PageStorageKey(bloc.apixuResult.forecast.forecastday[index].date),
          //       forecastDay: bloc.apixuResult.forecast.forecastday[index],
          //     );
          //   },
          // ),
          body: StreamBuilder(
            stream: bloc.mapCacheOut,
            initialData: bloc.mapCacheOut.value,
            builder: (context, AsyncSnapshot snapshot){
              if(snapshot.hasData){
                ApixuWeather apixuWeather = snapshot.data[0][settingsBloc.locStringOut.value];
                DarkSkyWeather darkSkyWeather = snapshot.data[1][settingsBloc.locStringOut.value];
                return ListView(
                  controller: controller,
                  cacheExtent: 2800,
                  //children: bloc.apixuResult?.forecast?.forecastday?.map((f){
                  children: apixuWeather.forecast.forecastday.map((f){
                    //print(f.astro);
                    //return bloc.apixuResult.forecast.forecastday.indexOf(f) == 0 
                    return apixuWeather.forecast.forecastday.indexOf(f) == 0
                    ? WeatherDetailItem(
                      key: ValueKey(f.date),
                      forecastDay: f,
                      //minutely: bloc.darkSkyResult.minutely,
                      minutely: darkSkyWeather.minutely,
                      // initScroll: DateTime.fromMillisecondsSinceEpoch(bloc.darkSkyResult.currently.time * 1000).hour * 130.0,
                      initScroll: DateTime.fromMillisecondsSinceEpoch(darkSkyWeather.currently.time * 1000).hour * 130.0,
                    )
                    :WeatherDetailItem(
                      key: ValueKey(f.date),
                      forecastDay: f,
                    );
                  }).toList(),// ?? [Center(child: CircularProgressIndicator())],
                );
              } else {
                return ListView(children: <Widget>[Center(child: CircularProgressIndicator(),)],);
              }
            },
          ),
        ),
      ],
    );
  }
}

class WeatherDetailItem extends StatefulWidget {
  final Minutely minutely;
  final Forecastday forecastDay;
  final double initScroll;

  WeatherDetailItem({Key key, this.minutely, this.forecastDay, this.initScroll}) : super(key: key);

  @override
  _WeatherDetailItemState createState() => _WeatherDetailItemState();
}

class _WeatherDetailItemState extends State<WeatherDetailItem> with TickerProviderStateMixin{
  double _mainHeight;
  double _minuteHeight;
  static const double _minuteHeightCollapsed = 80;
  static const double _minuteHeightExpanded = 240;
  double _hourHeight;
  static const double _hourHeightCollapsed = 130;
  static const double _hourHeightExpanded = 390;
  double _initScroll;
  ScrollPhysics minutePhysics = NeverScrollableScrollPhysics();
  ScrollPhysics hourPhysics = NeverScrollableScrollPhysics();
  ScrollController minuteScrollController;
  ScrollController hourScrollController;
  AnimationController minutelyController;
  AnimationController hourlyController;
  Animation minutelyAnimation;
  Animation hourlyAnimation;
  static Duration duration;

  @override
  void initState() { 
    super.initState();
    _initScroll = widget.initScroll ?? 0.0;
    _mainHeight = widget.minutely == null ? 280 : 360;
    _minuteHeight = _minuteHeightCollapsed;
    _hourHeight = _hourHeightCollapsed;
    minuteScrollController = ScrollController();
    hourScrollController = ScrollController(initialScrollOffset: _initScroll);
    duration = Duration(milliseconds: 300);
    minutelyController = AnimationController(vsync: this, duration: duration);
    hourlyController = AnimationController(vsync: this, duration: duration);
    minutelyAnimation = Tween<double>(
      begin: 0,
      end: 0.5,
    ).animate(
      CurvedAnimation(
        parent: minutelyController,
        curve: Curves.ease,
      ),
    );
    hourlyAnimation = Tween<double>(
      begin: 0,
      end: 0.5,
    ).animate(
      CurvedAnimation(
        parent: hourlyController,
        curve: Curves.ease,
      ),
    );
  }

  String dateFormatter(String string){
    DateTime time = DateTime.parse(string);
    return '${DateMap.weekday[time.weekday]}, ${DateMap.month[time.month]} ${time.day}';
  }

  Widget minuteFormatter(Minutely minute, int index){
    int epoch = minute.data[index].time;
    DateTime time =DateTime.fromMillisecondsSinceEpoch(epoch * 1000);
    String hour = hourString(time.hour);
    String min = time.minute > 9 ? '${time.minute}' : '0${time.minute}';
    //return Text(hour+':'+min+' ${minute.data[index].precipProbability}%');
    String precipType;
    if(minute.data[index].precipType != null){
      String precipTypeFirst = minute.data[index].precipType[0].toUpperCase();
      String precipTypeEnd = minute.data[index].precipType.substring(1,minute.data[index].precipType.length);
      precipType = precipTypeFirst + precipTypeEnd;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(hour+ ':' + min + '${time.hour < 12 ? ' AM' : ' PM'}'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Precipitation Chance'),
              Text('Precipitaion Type'),
              Text('Precipitation Intensity'),
              Text('Precipitation Intensity Error'),
            ],
          ),
          Column(
            children: <Widget>[
              Text('${(minute.data[index].precipProbability * 100).floor()}%'),
              Text('${precipType ?? 'N/A'}'),
              Text('${minute.data[index].precipIntensity ?? 'N/A'}'),
              Text('${minute.data[index].precipIntensityError ?? 'N/A'}'),
            ],
          ),
        ],
      ),
    );
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

  Widget hourFormatter(Forecastday forecastDay, int index){
    String units = WeatherInherited.of(context).settingsBloc.tempUnitOut.value;
    int epoch = forecastDay.hour[index].timeEpoch;
    DateTime time = DateTime.fromMillisecondsSinceEpoch((epoch) * 1000);
    // print(time);
    String hour = hourString(time.hour);
    String min = time.minute > 9 ? '${time.minute}' : '0${time.minute}';
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(hour+ ':' + min + '${time.hour < 12 ? ' AM' : ' PM'}'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Temperature'),
              Text('Windchill'),
              Text('Wind Direction'),
              Text('Wind Speed'),
              Text('Humidity'),
              Text('Precipitation amount'),
              Text('Dewpoint'),
            ],
          ),
          Column(
            children: <Widget>[
              Text('${units == 'F' ? forecastDay.hour[index].tempF : forecastDay.hour[index].tempC}°'),
              Text('${units == 'F' ? forecastDay.hour[index].windchillF : forecastDay.hour[index].windchillC}°'),
              Text('${forecastDay.hour[index].windDir}'),
              Text('${units == 'C' ? forecastDay.hour[index].windKph : forecastDay.hour[index].windMph}'),
              Text('${forecastDay.hour[index].humidity}'),
              Text('${units == 'C' ? forecastDay.hour[index].precipMm : forecastDay.hour[index].precipIn}'),
              Text('${units == 'F' ? forecastDay.hour[index].dewpointF : forecastDay.hour[index].dewpointC}'),
            ],
          ),
        ],
      ),
    );
  }

  void minutelyToggle(){
    if(minutelyController.isDismissed){
      _minuteHeight = _minuteHeightExpanded;
      _mainHeight += _minuteHeightExpanded - _minuteHeightCollapsed;
      minutePhysics = AlwaysScrollableScrollPhysics(); 
    } else if (minutelyController.isCompleted){
      _minuteHeight = _minuteHeightCollapsed;
      _mainHeight -= _minuteHeightExpanded - _minuteHeightCollapsed;
      minuteScrollController.animateTo(0, duration: duration, curve: Curves.linear);
      minutePhysics = NeverScrollableScrollPhysics();
    }
    setState(() {});
    minutelyControllerToggle();
  }

  void hourlyToggle(){
    if(hourlyController.isDismissed){
      _hourHeight = _hourHeightExpanded;
      _mainHeight += _hourHeightExpanded - _hourHeightCollapsed;
      hourPhysics = AlwaysScrollableScrollPhysics();
    } else if (hourlyController.isCompleted){
      _hourHeight = _hourHeightCollapsed;
      _mainHeight -= _hourHeightExpanded - _hourHeightCollapsed;
      hourScrollController.animateTo(_initScroll, duration: duration, curve: Curves.linear);
      hourPhysics = NeverScrollableScrollPhysics();
    }
    setState(() {});
    hourlyControllerToggle();
  }

  void minutelyControllerToggle(){
    if(minutelyController.isCompleted){
      minutelyController.reverse();
    } else {
      minutelyController.forward();
    }
  }

  void hourlyControllerToggle(){
    if(hourlyController.isCompleted){
      hourlyController.reverse();
    } else {
      hourlyController.forward();
    }
  }


  @override
  Widget build(BuildContext context) {
    String units = WeatherInherited.of(context).settingsBloc.tempUnitOut.value;
    return AnimatedContainer(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.white,
          width: 1,
        )
      ),
      duration: duration,
      width: MediaQuery.of(context).size.width,
      height: _mainHeight,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(dateFormatter(widget.forecastDay.date),
                  style: TextStyle(
                    fontSize: 20
                  ),),
                  Icon(MapToIcons.getWeatherIcon(widget.forecastDay.day.condition.code, 1), size: 40,),
                  Text('${units == 'F' ? widget.forecastDay.day.maxTempF : widget.forecastDay.day.maxTempC}° / ${units =='F' ? widget.forecastDay.day.minTempF : widget.forecastDay.day.minTempC}°',
                  style: TextStyle(
                    fontSize: 18
                  ),),
                ],
              ),
              Column(
                children: <Widget>[
                  Row(children: <Widget>[
                    Icon(MapToIcons.getSunriseIcon(), size: 30,),
                    SizedBox(width: 30,),
                    Icon(MapToIcons.getSunsetIcon(), size: 30,),
                  ],),
                  Text('${widget.forecastDay.astro.sunrise} / ${widget.forecastDay.astro.sunset}'),
                  SizedBox(height: 10,),
                  Icon(MapToIcons.getMoonIcon()),
                  Text('${widget.forecastDay.astro.moonrise} / ${widget.forecastDay.astro.moonset}'),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          widget.minutely == null 
           ? Container()
           : Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AnimatedContainer(
                  // color: Colors.red.withOpacity(0.3),
                  duration: duration,
                  width: 300,
                  height: _minuteHeight,
                  child: ListView.builder(
                      controller: minuteScrollController,
                      physics: minutePhysics,//minutelyController.isDismissed ? NeverScrollableScrollPhysics() : AlwaysScrollableScrollPhysics(),
                      itemCount: widget.minutely.data.length,
                      itemExtent: _minuteHeightCollapsed,
                      itemBuilder: (context, index){
                        //return Text(widget.minutely.data[index].precipProbability.toString());
                        return minuteFormatter(widget.minutely, index);
                      },
                    )
                ),
                Container(
                  height: _minuteHeightCollapsed,
                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: minutelyToggle,
                    icon: RotationTransition(
                      turns: minutelyAnimation,
                      child: Icon(Icons.keyboard_arrow_down),
                    ),
                  ),
                )
              ]
            ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AnimatedContainer(
                //margin: EdgeInsets.only(top: 15),
                duration: duration,
                width: 300,
                height: _hourHeight,
                child: ListView.builder(
                    controller: hourScrollController,
                    physics: hourPhysics,//hourlyController.isDismissed ? NeverScrollableScrollPhysics() : AlwaysScrollableScrollPhysics(),
                    itemCount: widget.forecastDay.hour.length,
                    itemExtent: _hourHeightCollapsed,
                    itemBuilder: (context, index){
                      //return Text(widget.forecastDay.hour[index].tempF.toString());
                      return hourFormatter(widget.forecastDay, index);
                    },
                  )
              ),
              Container(
                height: _hourHeightCollapsed,
                alignment: Alignment.center,
                child: IconButton(
                  onPressed: hourlyToggle,
                  icon: RotationTransition(
                    turns: hourlyAnimation,
                    child: Icon(Icons.keyboard_arrow_down),
                  ),
                ),
              )
            ]
          ),
        ],
      ),
    );
  }
}