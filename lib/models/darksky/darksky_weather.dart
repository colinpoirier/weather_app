library darksky_weather;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_app/models/darksky/serializers.dart';

//flutter packages pub run build_runner build

part 'darksky_weather.g.dart';

abstract class DarkSkyWeather
    implements Built<DarkSkyWeather, DarkSkyWeatherBuilder> {
  DarkSkyWeather._();

  factory DarkSkyWeather([updates(DarkSkyWeatherBuilder b)]) = _$DarkSkyWeather;

  @BuiltValueField(wireName: 'latitude')
  double get latitude;
  @BuiltValueField(wireName: 'longitude')
  double get longitude;
  @BuiltValueField(wireName: 'timezone')
  String get timezone;
  @BuiltValueField(wireName: 'currently')
  @nullable
  Currently get currently;
  @BuiltValueField(wireName: 'minutely')
  @nullable
  Minutely get minutely;
  @BuiltValueField(wireName: 'hourly')
  @nullable
  Hourly get hourly;
  @BuiltValueField(wireName: 'daily')
  @nullable
  Daily get daily;
  @BuiltValueField(wireName: 'alerts')
  @nullable
  BuiltList<Alerts> get alerts;
  @BuiltValueField(wireName: 'flags')
  @nullable
  Flags get flags;
  @BuiltValueField(wireName: 'offset')
  @nullable
  int get offset;
  String toJson() {
    return json
        .encode(serializers.serializeWith(DarkSkyWeather.serializer, this));
  }

  static DarkSkyWeather fromJson(String jsonString) {
    return serializers.deserializeWith(
        DarkSkyWeather.serializer, json.decode(jsonString));
  }

  static Serializer<DarkSkyWeather> get serializer =>
      _$darkSkyWeatherSerializer;
}
// library currently;

// import 'dart:convert';

// import 'package:built_collection/built_collection.dart';
// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';

// part 'currently.g.dart';

abstract class Currently implements Built<Currently, CurrentlyBuilder> {
  Currently._();

  factory Currently([updates(CurrentlyBuilder b)]) = _$Currently;

  @BuiltValueField(wireName: 'time')
  int get time;
  @BuiltValueField(wireName: 'summary')
  @nullable
  String get summary;
  @BuiltValueField(wireName: 'icon')
  @nullable
  String get icon;
  @BuiltValueField(wireName: 'nearestStormDistance')
  @nullable
  double get nearestStormDistance;
  @BuiltValueField(wireName: 'nearestStormBearing')
  @nullable
  int get nearestStormBearing;
  @BuiltValueField(wireName: 'precipIntensity')
  @nullable
  double get precipIntensity;
  @BuiltValueField(wireName: 'precipIntensityError')
  @nullable
  double get precipIntensityError;
  @BuiltValueField(wireName: 'precipProbability')
  @nullable
  double get precipProbability;
  @BuiltValueField(wireName: 'precipType')
  @nullable
  String get precipType;
  @BuiltValueField(wireName: 'temperature')
  @nullable
  double get temperature;
  @BuiltValueField(wireName: 'apparentTemperature')
  @nullable
  double get apparentTemperature;
  @BuiltValueField(wireName: 'dewPoint')
  @nullable
  double get dewPoint;
  @BuiltValueField(wireName: 'humidity')
  @nullable
  double get humidity;
  @BuiltValueField(wireName: 'pressure')
  @nullable
  double get pressure;
  @BuiltValueField(wireName: 'windSpeed')
  @nullable
  double get windSpeed;
  @BuiltValueField(wireName: 'windGust')
  @nullable
  double get windGust;
  @BuiltValueField(wireName: 'windBearing')
  @nullable
  int get windBearing;
  @BuiltValueField(wireName: 'cloudCover')
  @nullable
  double get cloudCover;
  @BuiltValueField(wireName: 'uvIndex')
  @nullable
  int get uvIndex;
  @BuiltValueField(wireName: 'visibility')
  @nullable
  double get visibility;
  @BuiltValueField(wireName: 'ozone')
  @nullable
  double get ozone;
  String toJson() {
    return json.encode(serializers.serializeWith(Currently.serializer, this));
  }

  static Currently fromJson(String jsonString) {
    return serializers.deserializeWith(
        Currently.serializer, json.decode(jsonString));
  }

  static Serializer<Currently> get serializer => _$currentlySerializer;
}
// library minutely;

// import 'dart:convert';

// import 'package:built_collection/built_collection.dart';
// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';

// part 'minutely.g.dart';

abstract class Minutely implements Built<Minutely, MinutelyBuilder> {
  Minutely._();

  factory Minutely([updates(MinutelyBuilder b)]) = _$Minutely;

  @BuiltValueField(wireName: 'summary')
  @nullable
  String get summary;
  @BuiltValueField(wireName: 'icon')
  @nullable
  String get icon;
  @BuiltValueField(wireName: 'data')
  BuiltList<MinuteData> get data;
  String toJson() {
    return json.encode(serializers.serializeWith(Minutely.serializer, this));
  }

  static Minutely fromJson(String jsonString) {
    return serializers.deserializeWith(
        Minutely.serializer, json.decode(jsonString));
  }

  static Serializer<Minutely> get serializer => _$minutelySerializer;
}
// library hourly;

// import 'dart:convert';

// import 'package:built_collection/built_collection.dart';
// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';

// part 'hourly.g.dart';

abstract class Hourly implements Built<Hourly, HourlyBuilder> {
  Hourly._();

  factory Hourly([updates(HourlyBuilder b)]) = _$Hourly;

  @BuiltValueField(wireName: 'summary')
  @nullable
  String get summary;
  @BuiltValueField(wireName: 'icon')
  @nullable
  String get icon;
  @BuiltValueField(wireName: 'data')
  BuiltList<HourData> get data;
  String toJson() {
    return json.encode(serializers.serializeWith(Hourly.serializer, this));
  }

  static Hourly fromJson(String jsonString) {
    return serializers.deserializeWith(
        Hourly.serializer, json.decode(jsonString));
  }

  static Serializer<Hourly> get serializer => _$hourlySerializer;
}
// library daily;

// import 'dart:convert';

// import 'package:built_collection/built_collection.dart';
// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';

// part 'daily.g.dart';

abstract class Daily implements Built<Daily, DailyBuilder> {
  Daily._();

  factory Daily([updates(DailyBuilder b)]) = _$Daily;

  @BuiltValueField(wireName: 'summary')
  @nullable
  String get summary;
  @BuiltValueField(wireName: 'icon')
  @nullable
  String get icon;
  @BuiltValueField(wireName: 'data')
  BuiltList<DailyData> get data;
  String toJson() {
    return json.encode(serializers.serializeWith(Daily.serializer, this));
  }

  static Daily fromJson(String jsonString) {
    return serializers.deserializeWith(
        Daily.serializer, json.decode(jsonString));
  }

  static Serializer<Daily> get serializer => _$dailySerializer;
}
// library alerts;

// import 'dart:convert';

// import 'package:built_collection/built_collection.dart';
// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';

// part 'alerts.g.dart';

abstract class Alerts implements Built<Alerts, AlertsBuilder> {
  Alerts._();

  factory Alerts([updates(AlertsBuilder b)]) = _$Alerts;

  @BuiltValueField(wireName: 'title')
  String get title;
  @BuiltValueField(wireName: 'regions')
  BuiltList<String> get regions;
  @BuiltValueField(wireName: 'severity')
  String get severity;
  @BuiltValueField(wireName: 'time')
  int get time;
  @BuiltValueField(wireName: 'expires')
  int get expires;
  @BuiltValueField(wireName: 'description')
  String get description;
  @BuiltValueField(wireName: 'uri')
  String get uri;
  String toJson() {
    return json.encode(serializers.serializeWith(Alerts.serializer, this));
  }

  static Alerts fromJson(String jsonString) {
    return serializers.deserializeWith(
        Alerts.serializer, json.decode(jsonString));
  }

  static Serializer<Alerts> get serializer => _$alertsSerializer;
}
// library flags;

// import 'dart:convert';

// import 'package:built_collection/built_collection.dart';
// import 'package:built_value/built_value.dart';
// import 'package:built_value/serializer.dart';

// part 'flags.g.dart';

abstract class Flags implements Built<Flags, FlagsBuilder> {
  Flags._();

  factory Flags([updates(FlagsBuilder b)]) = _$Flags;

  @BuiltValueField(wireName: 'sources')
  @nullable
  BuiltList<String> get sources;
  @BuiltValueField(wireName: 'nearest-station')
  @nullable
  double get nearestStation;
  @BuiltValueField(wireName: 'units')
  @nullable
  String get units;
  String toJson() {
    return json.encode(serializers.serializeWith(Flags.serializer, this));
  }

  static Flags fromJson(String jsonString) {
    return serializers.deserializeWith(
        Flags.serializer, json.decode(jsonString));
  }

  static Serializer<Flags> get serializer => _$flagsSerializer;
}

abstract class MinuteData implements Built<MinuteData, MinuteDataBuilder> {
  MinuteData._();

  factory MinuteData([updates(MinuteDataBuilder b)]) = _$MinuteData;

  @BuiltValueField(wireName: 'time')
  @nullable
  int get time;
  @BuiltValueField(wireName: 'precipIntensity')
  @nullable
  double get precipIntensity;
  @BuiltValueField(wireName: 'precipIntensityError')
  @nullable
  double get precipIntensityError;
  @BuiltValueField(wireName: 'precipProbability')
  @nullable
  double get precipProbability;
  @BuiltValueField(wireName: 'precipType')
  @nullable
  String get precipType;
  String toJson() {
    return json.encode(serializers.serializeWith(MinuteData.serializer, this));
  }

  static MinuteData fromJson(String jsonString) {
    return serializers.deserializeWith(
        MinuteData.serializer, json.decode(jsonString));
  }

  static Serializer<MinuteData> get serializer => _$minuteDataSerializer;
}

abstract class HourData implements Built<HourData, HourDataBuilder> {
  HourData._();

  factory HourData([updates(HourDataBuilder b)]) = _$HourData;

  @BuiltValueField(wireName: 'time')
  int get time;
  @BuiltValueField(wireName: 'summary')
  @nullable
  String get summary;
  @BuiltValueField(wireName: 'icon')
  @nullable
  String get icon;
  @BuiltValueField(wireName: 'precipIntensity')
  @nullable
  double get precipIntensity;
  @BuiltValueField(wireName: 'precipProbability')
  @nullable
  double get precipProbability;
  @BuiltValueField(wireName: 'precipType')
  @nullable
  String get precipType;
  @BuiltValueField(wireName: 'precipAccumulation')
  @nullable
  double get precipAccumulation;
  @BuiltValueField(wireName: 'temperature')
  @nullable
  double get temperature;
  @BuiltValueField(wireName: 'apparentTemperature')
  @nullable
  double get apparentTemperature;
  @BuiltValueField(wireName: 'dewPoint')
  @nullable
  double get dewPoint;
  @BuiltValueField(wireName: 'humidity')
  @nullable
  double get humidity;
  @BuiltValueField(wireName: 'pressure')
  @nullable
  double get pressure;
  @BuiltValueField(wireName: 'windSpeed')
  @nullable
  double get windSpeed;
  @BuiltValueField(wireName: 'windGust')
  @nullable
  double get windGust;
  @BuiltValueField(wireName: 'windBearing')
  @nullable
  int get windBearing;
  @BuiltValueField(wireName: 'cloudCover')
  @nullable
  double get cloudCover;
  @BuiltValueField(wireName: 'uvIndex')
  @nullable
  int get uvIndex;
  @BuiltValueField(wireName: 'visibility')
  @nullable
  double get visibility;
  @BuiltValueField(wireName: 'ozone')
  @nullable
  double get ozone;
  String toJson() {
    return json.encode(serializers.serializeWith(HourData.serializer, this));
  }

  static HourData fromJson(String jsonString) {
    return serializers.deserializeWith(
        HourData.serializer, json.decode(jsonString));
  }

  static Serializer<HourData> get serializer => _$hourDataSerializer;
}

abstract class DailyData implements Built<DailyData, DailyDataBuilder> {
  DailyData._();

  factory DailyData([updates(DailyDataBuilder b)]) = _$DailyData;

  @BuiltValueField(wireName: 'time')
  int get time;
  @BuiltValueField(wireName: 'summary')
  @nullable
  String get summary;
  @BuiltValueField(wireName: 'icon')
  @nullable
  String get icon;
  @BuiltValueField(wireName: 'sunriseTime')
  @nullable
  int get sunriseTime;
  @BuiltValueField(wireName: 'sunsetTime')
  @nullable
  int get sunsetTime;
  @BuiltValueField(wireName: 'moonPhase')
  @nullable
  double get moonPhase;
  @BuiltValueField(wireName: 'precipIntensity')
  @nullable
  double get precipIntensity;
  @BuiltValueField(wireName: 'precipIntensityMax')
  @nullable
  double get precipIntensityMax;
  @BuiltValueField(wireName: 'precipIntensityMaxTime')
  @nullable
  int get precipIntensityMaxTime;
  @BuiltValueField(wireName: 'precipProbability')
  @nullable
  double get precipProbability;
  @BuiltValueField(wireName: 'precipType')
  @nullable  
  String get precipType;
  @BuiltValueField(wireName: 'precipAccumulation')
  @nullable
  double get precipAccumulation;
  @BuiltValueField(wireName: 'temperatureHigh')
  @nullable
  double get temperatureHigh;
  @BuiltValueField(wireName: 'temperatureHighTime')
  @nullable
  int get temperatureHighTime;
  @BuiltValueField(wireName: 'temperatureLow')
  @nullable
  double get temperatureLow;
  @BuiltValueField(wireName: 'temperatureLowTime')
  @nullable
  int get temperatureLowTime;
  @BuiltValueField(wireName: 'apparentTemperatureHigh')
  @nullable
  double get apparentTemperatureHigh;
  @BuiltValueField(wireName: 'apparentTemperatureHighTime')
  @nullable
  int get apparentTemperatureHighTime;
  @BuiltValueField(wireName: 'apparentTemperatureLow')
  @nullable
  double get apparentTemperatureLow;
  @BuiltValueField(wireName: 'apparentTemperatureLowTime')
  @nullable
  int get apparentTemperatureLowTime;
  @BuiltValueField(wireName: 'dewPoint')
  @nullable
  double get dewPoint;
  @BuiltValueField(wireName: 'humidity')
  @nullable
  double get humidity;
  @BuiltValueField(wireName: 'pressure')
  @nullable
  double get pressure;
  @BuiltValueField(wireName: 'windSpeed')
  @nullable
  double get windSpeed;
  @BuiltValueField(wireName: 'windGust')
  @nullable
  double get windGust;
  @BuiltValueField(wireName: 'windGustTime')
  @nullable
  int get windGustTime;
  @BuiltValueField(wireName: 'windBearing')
  @nullable
  int get windBearing;
  @BuiltValueField(wireName: 'cloudCover')
  @nullable
  double get cloudCover;
  @BuiltValueField(wireName: 'uvIndex')
  @nullable
  int get uvIndex;
  @BuiltValueField(wireName: 'uvIndexTime')
  @nullable
  int get uvIndexTime;
  @BuiltValueField(wireName: 'visibility')
  @nullable
  double get visibility;
  @BuiltValueField(wireName: 'ozone')
  @nullable
  double get ozone;
  @BuiltValueField(wireName: 'temperatureMin')
  @nullable
  double get temperatureMin;
  @BuiltValueField(wireName: 'temperatureMinTime')
  @nullable
  int get temperatureMinTime;
  @BuiltValueField(wireName: 'temperatureMax')
  @nullable
  double get temperatureMax;
  @BuiltValueField(wireName: 'temperatureMaxTime')
  @nullable
  int get temperatureMaxTime;
  @BuiltValueField(wireName: 'apparentTemperatureMin')
  @nullable
  double get apparentTemperatureMin;
  @BuiltValueField(wireName: 'apparentTemperatureMinTime')
  @nullable
  int get apparentTemperatureMinTime;
  @BuiltValueField(wireName: 'apparentTemperatureMax')
  @nullable
  double get apparentTemperatureMax;
  @BuiltValueField(wireName: 'apparentTemperatureMaxTime')
  @nullable
  int get apparentTemperatureMaxTime;
  String toJson() {
    return json.encode(serializers.serializeWith(DailyData.serializer, this));
  }

  static DailyData fromJson(String jsonString) {
    return serializers.deserializeWith(
        DailyData.serializer, json.decode(jsonString));
  }

  static Serializer<DailyData> get serializer => _$dailyDataSerializer;
}
