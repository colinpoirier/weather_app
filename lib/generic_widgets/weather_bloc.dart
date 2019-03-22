import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app/forecast/settings_saver.dart';
import 'package:weather_app/models/apixu/apixu_search.dart';
import 'package:weather_app/models/apixu/apixu_weather.dart';
import 'package:http/http.dart' as http;
import 'package:rxdart/rxdart.dart';
import 'package:weather_app/models/darksky/darksky_weather.dart';
import 'package:weather_app/api_keys/api_keys.dart';

class WeatherBloc {
  static const _baseApixu = 'http://api.apixu.com/v1';
  static const _baseDarkSky = 'https://api.darksky.net';
  // ApixuWeather apixuResult;
  ApixuSearchResults apixuSearchRes;
  // DarkSkyWeather darkSkyResult;
  Map<String, ApixuWeather> apixuCache = Map<String, ApixuWeather>();
  Map<String, DarkSkyWeather> darkSkyCache = Map<String, DarkSkyWeather>();
  final _apixu = BehaviorSubject<ApixuWeather>();
  final _darksky = BehaviorSubject<DarkSkyWeather>();
  final _eventIn = StreamController<WeatherEvent>();
  final _radarOut = BehaviorSubject<List<Widget>>();
  final _zoomOut = BehaviorSubject<int>();
  final _dimensionsIn = StreamController<List<double>>();
  final _mapCacheOut = BehaviorSubject<List<Map<String, dynamic>>>();
  int zoom = 8;
  int _height;
  int _width;
  double _lat;
  double _long;
  String _tempUnit;

  // void getApixuForecast(double lat, double long) async {
  //   final forecastUrl =
  //       '$_baseApixu/forecast.json?key=$apixuApiKey&q=$lat,$long&days=7';
  //   final forecastRes = await http.get(forecastUrl);
  //   if (forecastRes.statusCode == 200) {
  //     apixuResult = ApixuWeather.fromJson(forecastRes.body);
  //   }
  //   getDarkSkyForecast(lat, long);
  // }

  Future getApixuSearchResults(String query) async {
    final searchUrl = '$_baseApixu/search.json?key=$apixuApiKey&q=$query';
    final searchRes = await http.get(searchUrl);
    if (searchRes.statusCode == 200) {
      if (searchRes.body.isNotEmpty) {
        apixuSearchRes = ApixuSearchResults.fromJson(searchRes.body);
      } else {
        print(query);
        print(searchRes.body);
      }
    }
  }

  // void getDarkSkyForecast(double lat, double long) async {
  //   final forecastUrl = '$_baseDarkSky/forecast/$darkSkyApiKey/$lat,$long?extend=hourly';
  //   final forecastRes = await http.get(forecastUrl);
  //   if (forecastRes.statusCode == 200) {
  //     darkSkyResult = DarkSkyWeather.fromJson(forecastRes.body);
  //   }
  // }

  Future _getApixuForecast(LocationSearchData lsd) async {
    ApixuWeather apixuWeather;
    double lat = lsd.lat;
    double long = lsd.long;
    final forecastUrl =
        '$_baseApixu/forecast.json?key=$apixuApiKey&q=$lat,$long&days=7';
    final forecastRes = await http.get(forecastUrl);
    if (forecastRes.statusCode == 200) {
      apixuWeather = ApixuWeather.fromJson(forecastRes.body);
      // apixuCache[lsd.name] = apixuResult;
    }
    return apixuWeather;
  }

  Future _getDarkSkyForecast(LocationSearchData lsd) async {
    DarkSkyWeather darkSkyResult;
    double lat = lsd.lat;
    double long = lsd.long;
    final forecastUrl = '$_baseDarkSky/forecast/$darkSkyApiKey/$lat,$long?extend=hourly&units=$_tempUnit';
    final forecastRes = await http.get(forecastUrl);
    if (forecastRes.statusCode == 200) {
      darkSkyResult = DarkSkyWeather.fromJson(forecastRes.body);
      //darkSkyCache[lsd.name] = darkSkyResult;
    }
    return darkSkyResult;
  }

  Stream<ApixuWeather> get apixuStream => _apixu.asBroadcastStream();
  Stream<DarkSkyWeather> get darkSkyStream => _darksky.asBroadcastStream();
  Stream<List<Widget>> get radarOut => _radarOut.stream;
  BehaviorSubject<int> get zoomOut => _zoomOut.stream;
  BehaviorSubject<List<Map<String, dynamic>>> get mapCacheOut => _mapCacheOut.stream;

  Sink<WeatherEvent> get eventIn => _eventIn.sink;
  Sink<int> get _zoomIn => _zoomOut.sink;
  Sink<List<double>> get dimemsionsIn => _dimensionsIn.sink;

  WeatherBloc() {
    _zoomIn.add(zoom);
    _dimensionsIn.stream.listen((dimensions)=>_setMapDimensions(dimensions));
    _eventIn.stream.listen((event)=> _handleEvent(event));
  }

  void _handleEvent(WeatherEvent event){
    if(event is GetRadar){
      _setCoords(event.lat, event.long);
    } else if (event is RadarZoom){
      _zoomRadar(event.direction);
    } else if (event is ZoomReset){
      _resetZoom();
    } else if (event is GetWeather){
      _getWeather(event.locationSearchData);
    } else if (event is SetTemperatureUnit){
      _setTemperatureUnit(event.tempUnit);
    }
  }
  
  void _setCoords(double lat, double long){
    _lat = lat;
    _long = long;
    _getRadar();
  }

  void _getRadar() async{
    List<Image> images = [];
    for (int i = 0; i < 6; i++) {
      if(i==0){
        String currentUrl = 'https://maps.aerisapi.com/${aerisClientId + '_' + aerisSecretKey}/radar/$_width' + 'x' + '$_height/$_lat,$_long,${zoom.clamp(1, 15)}/current.png';
        print(currentUrl);
        var currentRes = await http.get(currentUrl);
        images.add(Image.memory(currentRes.bodyBytes));
      } else {
        String pastUrl = 'https://maps.aerisapi.com/${aerisClientId + '_' + aerisSecretKey}/radar/$_width' + 'x' + '$_height/$_lat,$_long,${zoom.clamp(1, 15)}/-${10 * i}minutes.png';
        var pastRes = await http.get(pastUrl);
        images.insert(i-1, Image.memory(pastRes.bodyBytes));
      }
      _radarOut.add(images);
    }
  }

  void _zoomRadar(String direction){
    if(direction == 'in'){
      zoom+=1.clamp(1, 15);
    } else if (direction == 'out'){
      zoom-=1.clamp(1, 15);
    }
    _zoomOut.add(zoom);
    _getRadar();
  }

  void _resetZoom(){
    zoom = 8;
    _zoomOut.add(zoom);
  }

  void _setMapDimensions(List<double> dimensions){
    _height = dimensions[0].floor();
    _width = dimensions[1].floor();
  }

  void _getWeather(LocationSearchData lsd) async{
    apixuCache[lsd.name] = await _getApixuForecast(lsd);
    darkSkyCache[lsd.name] = await _getDarkSkyForecast(lsd);

    _mapCacheOut.add([apixuCache, darkSkyCache]);
  }

  void _setTemperatureUnit(String tempUnit){
    switch(tempUnit){
      case 'F':
        _tempUnit = 'us';
        break;
      case 'C':
        _tempUnit = 'ca';
        break;
      case 'Hybrid':
        _tempUnit = 'uk2';
        break;
      default:
        _tempUnit = 'us';
        break;
    }
  }
  void dispose() {
    _apixu.close();
    _darksky.close();
    _eventIn.close();
    _radarOut.close();
    _zoomOut.close();
    _dimensionsIn.close();
  }
}

class WeatherEvent{}

class GetRadar extends WeatherEvent{
  double lat;
  double long;

  GetRadar({this.lat, this.long});
}

class RadarZoom extends WeatherEvent{
  String direction;

  RadarZoom({this.direction});
}

class ZoomReset extends WeatherEvent{}

class GetWeather extends WeatherEvent{
  LocationSearchData locationSearchData;

  GetWeather({this.locationSearchData});
}

class SetTemperatureUnit extends WeatherEvent{
  String tempUnit;

  SetTemperatureUnit({this.tempUnit});
}