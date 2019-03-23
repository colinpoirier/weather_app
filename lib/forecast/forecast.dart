import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:meta/meta.dart';
import 'package:weather_app/forecast/background/background_with_rings.dart';
//import 'package:weather/forecast/background/rain.dart';
import 'package:weather_app/forecast/radial_list.dart';
import 'package:weather_app/generic_widgets/bloc_provider.dart';
import 'package:weather_app/generic_widgets/map_to_icons.dart';

class Forecast extends StatelessWidget {

  final RadialListViewModel radialList;
  final SlidingRadialListController slidingListController;
  final int daysIndex;

  Forecast({
    @required this.radialList,
    @required this.slidingListController,
    this.daysIndex
  });

  Widget _temperatureText(List<Map> data,BuildContext context) {
    String units = WeatherInherited.of(context).settingsBloc.tempUnitOut.value;
    var settingsBloc = WeatherInherited.of(context).settingsBloc;
    double apixuCurrentTemp = units == 'F' 
          ? data[0][settingsBloc.locStringOut.value].current.tempF
          : data[0][settingsBloc.locStringOut.value].current.tempC;
    double darkSkyCurrentTemp = data[1][settingsBloc.locStringOut.value].currently.apparentTemperature;
    double aveCurrentTemp = (apixuCurrentTemp + darkSkyCurrentTemp)/2;
    int aveIntTemp = aveCurrentTemp.floor();
    return  Align(
      alignment: Alignment.centerLeft,
      child:  Padding(
        padding: const EdgeInsets.only(bottom: 180.0, left: 10.0),
        child:  Container(
          alignment: Alignment.center,
          width: 200,
          child: Text(
            '$aveIntTemp°',
            style:  TextStyle(
              color: Colors.white,
              fontSize: 80.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget _highLowText(List<Map> data, BuildContext context){
    String units = WeatherInherited.of(context).settingsBloc.tempUnitOut.value;
    var settingsBloc = WeatherInherited.of(context).settingsBloc;
    int apixuMaxDayTemp = units == 'F' 
        ? data[0][settingsBloc.locStringOut.value].forecast.forecastday[daysIndex].day.maxTempF.floor()
        : data[0][settingsBloc.locStringOut.value].forecast.forecastday[daysIndex].day.maxTempC.floor();
    int darkSkyMinDayTemp = data[1][settingsBloc.locStringOut.value].daily.data[daysIndex].temperatureMin.floor(); 
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 185, left: 10),
        child: Container(
          width: 200,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: Text(
                  '$apixuMaxDayTemp°',
                  style: TextStyle(
                    fontSize: 40
                  ),
                ),
              ),
              Text(
                '/',
                style: TextStyle(
                  fontSize: 40
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Text(
                  '$darkSkyMinDayTemp°',
                  style: TextStyle(
                    fontSize: 40
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 Widget __currentWeatherIcon(List<Map> data,BuildContext context){
    var settingsBloc = WeatherInherited.of(context).settingsBloc;
    int apixuCurrentIconCode = data[0][settingsBloc.locStringOut.value].current.condition.code;
    int day = data[0][settingsBloc.locStringOut.value].current.isDay;
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 15),
        child: Container(
          width: 200,
          alignment: Alignment.centerLeft,
          child: Icon(
            _getIconData(apixuCurrentIconCode, day),
            size: 70,
          ),
        ),
      ),
    );
  }

  Widget _temperatureTextNull() {
    return  Align(
      alignment: Alignment.centerLeft,
      child:  Padding(
        padding: const EdgeInsets.only(bottom: 180.0, left: 10.0),
        child:  Container(
          alignment: Alignment.center,
          width: 200,
          child: Text(
            '- -',
            style:  TextStyle(
              color: Colors.white,
              fontSize: 80.0,
            ),
          ),
        ),
      ),
    );
  }

  Widget _highLowTextNull(){
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(top: 185, left: 10),
        child: Container(
          width: 200,
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                child: Text(
                  '- -',
                  style: TextStyle(
                    fontSize: 40
                  ),
                ),
              ),
              Text(
                '/',
                style: TextStyle(
                  fontSize: 40
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Text(
                  '- -',
                  style: TextStyle(
                    fontSize: 40
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

 Widget __currentWeatherIconNull(){
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, bottom: 15),
        child: Container(
          width: 200,
          alignment: Alignment.centerLeft,
          child: Icon(
            MdiIcons.nullIcon,
            size: 70,
          ),
        ),
      ),
    );
  }

  IconData _getIconData(int code, int day){ 
    return MapToIcons.getWeatherIcon(code, day);
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: <Widget>[
        BackgroundWithRings(),
        StreamBuilder(
          stream: WeatherInherited.of(context).settingsBloc.locStringOut,
          initialData: null,
          builder: (context, AsyncSnapshot<String> locSnapshot){
            return StreamBuilder(
              stream: WeatherInherited.of(context).bloc.mapCacheOut,
              initialData: null,
              builder: (context, AsyncSnapshot snapshot){
                if(snapshot.hasData && locSnapshot.hasData){
                  if(snapshot.data[0][locSnapshot.data] != null && snapshot.data[1][locSnapshot.data] != null){
                    return Stack(children: [
                      _highLowText(snapshot.data, context),
                      _temperatureText(snapshot.data, context),
                      __currentWeatherIcon(snapshot.data, context)
                      ]
                    );
                  } else {
                    return Stack(children: [
                      _highLowTextNull(),
                      _temperatureTextNull(),
                      __currentWeatherIconNull()
                      ]
                    );
                  }
                } else {
                  return Stack(children: [
                    _highLowTextNull(),
                    _temperatureTextNull(),
                    __currentWeatherIconNull()
                    ]
                  );
                }
              },
            );
          },
        ),
        // _temperatureText(context),
        // __currentWeatherIcon(context),
        SlidingRadialList(
          radialList: radialList,
          controller: slidingListController,
        ),

        // Rain(),
      ],
    );
  }
}
