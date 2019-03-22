library apixu_weather;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_app/models/apixu/serializers.dart';

part 'apixu_weather.g.dart';

//flutter packages pub run build_runner build

abstract class ApixuWeather
    implements Built<ApixuWeather, ApixuWeatherBuilder> {
  ApixuWeather._();

  factory ApixuWeather([updates(ApixuWeatherBuilder b)]) = _$ApixuWeather;

  @BuiltValueField(wireName: 'location')
  Location get location;
  @BuiltValueField(wireName: 'current')
  Current get current;
  @BuiltValueField(wireName: 'forecast')
  Forecast get forecast;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ApixuWeather.serializer, this));
  }

  static ApixuWeather fromJson(String jsonString) {
    return serializers.deserializeWith(
        ApixuWeather.serializer, json.decode(jsonString));
  }

  static Serializer<ApixuWeather> get serializer => _$apixuWeatherSerializer;
}

abstract class Location implements Built<Location, LocationBuilder> {
  Location._();

  factory Location([updates(LocationBuilder b)]) = _$Location;

  @BuiltValueField(wireName: 'name')
  String get name;
  @BuiltValueField(wireName: 'region')
  String get region;
  @BuiltValueField(wireName: 'country')
  String get country;
  @BuiltValueField(wireName: 'lat')
  double get lat;
  @BuiltValueField(wireName: 'lon')
  double get lon;
  @BuiltValueField(wireName: 'tz_id')
  String get tzId;
  @BuiltValueField(wireName: 'localtime_epoch')
  int get localtimeEpoch;
  @BuiltValueField(wireName: 'localtime')
  String get localtime;
  String toJson() {
    return json.encode(serializers.serializeWith(Location.serializer, this));
  }

  static Location fromJson(String jsonString) {
    return serializers.deserializeWith(
        Location.serializer, json.decode(jsonString));
  }

  static Serializer<Location> get serializer => _$locationSerializer;
}

abstract class Current implements Built<Current, CurrentBuilder> {
  Current._();

  factory Current([updates(CurrentBuilder b)]) = _$Current;

  @BuiltValueField(wireName: 'last_updated_epoch')
  int get lastUpdatedEpoch;
  @BuiltValueField(wireName: 'last_updated')
  String get lastUpdated;
  @BuiltValueField(wireName: 'temp_c')
  double get tempC;
  @BuiltValueField(wireName: 'temp_f')
  double get tempF;
  @BuiltValueField(wireName: 'is_day')
  int get isDay;
  @BuiltValueField(wireName: 'condition')
  Condition get condition;
  @BuiltValueField(wireName: 'wind_mph')
  double get windMph;
  @BuiltValueField(wireName: 'wind_kph')
  double get windKph;
  @BuiltValueField(wireName: 'wind_degree')
  int get windDegree;
  @BuiltValueField(wireName: 'wind_dir')
  String get windDir;
  @BuiltValueField(wireName: 'pressure_mb')
  double get pressureMb;
  @BuiltValueField(wireName: 'pressure_in')
  double get pressureIn;
  @BuiltValueField(wireName: 'precip_mm')
  double get precipMm;
  @BuiltValueField(wireName: 'precip_in')
  double get precipIn;
  @BuiltValueField(wireName: 'humidity')
  int get humidity;
  @BuiltValueField(wireName: 'cloud')
  int get cloud;
  @BuiltValueField(wireName: 'feelslike_c')
  double get feelslikeC;
  @BuiltValueField(wireName: 'feelslike_f')
  double get feelslikeF;
  @BuiltValueField(wireName: 'vis_km')
  double get visKm;
  @BuiltValueField(wireName: 'vis_miles')
  double get visMiles;
  @BuiltValueField(wireName: 'uv')
  double get uv;
  String toJson() {
    return json.encode(serializers.serializeWith(Current.serializer, this));
  }

  static Current fromJson(String jsonString) {
    return serializers.deserializeWith(
        Current.serializer, json.decode(jsonString));
  }

  static Serializer<Current> get serializer => _$currentSerializer;
}

abstract class Condition implements Built<Condition, ConditionBuilder> {
  @BuiltValueField(wireName: 'text')
  String get text;
  @BuiltValueField(wireName: 'icon')
  String get icon;
  @BuiltValueField(wireName: 'code')
  int get code;
  
  

  Condition._();

  factory Condition([updates(ConditionBuilder b)]) = _$Condition;

  String toJson() {
    return json.encode(serializers.serializeWith(Condition.serializer, this));
  }

  static Condition fromJson(String jsonString) {
    return serializers.deserializeWith(Condition.serializer, json.decode(jsonString));
  }

  static Serializer<Condition> get serializer => _$conditionSerializer;
}

abstract class Forecast implements Built<Forecast, ForecastBuilder> {
  Forecast._();

  factory Forecast([updates(ForecastBuilder b)]) = _$Forecast;

  @BuiltValueField(wireName: 'forecastday')
  BuiltList<Forecastday> get forecastday;
  String toJson() {
    return json.encode(serializers.serializeWith(Forecast.serializer, this));
  }

  static Forecast fromJson(String jsonString) {
    return serializers.deserializeWith(
        Forecast.serializer, json.decode(jsonString));
  }

  static Serializer<Forecast> get serializer => _$forecastSerializer;
}

abstract class Forecastday implements Built<Forecastday, ForecastdayBuilder> {
  @BuiltValueField(wireName: 'date')
  String get date;
  @BuiltValueField(wireName: 'date_epoch')
  int get dateEpoch;
  @BuiltValueField(wireName: 'day')
  Day get day;
  @BuiltValueField(wireName: 'astro')
  Astro get astro;
  @BuiltValueField(wireName: 'hour')
  BuiltList<Hour> get hour;


  Forecastday._();

  factory Forecastday([updates(ForecastdayBuilder b)]) = _$Forecastday;

  String toJson() {
    return json.encode(serializers.serializeWith(Forecastday.serializer, this));
  }

  static Forecastday fromJson(String jsonString) {
    return serializers.deserializeWith(Forecastday.serializer, json.decode(jsonString));
  }

  static Serializer<Forecastday> get serializer => _$forecastdaySerializer;
}

abstract class Day implements Built<Day, DayBuilder> {
  @BuiltValueField(wireName: 'maxtemp_c')
  double get maxTempC;
  @BuiltValueField(wireName: 'maxtemp_f')
  double get maxTempF;
  @BuiltValueField(wireName: 'mintemp_c')
  double get minTempC;
  @BuiltValueField(wireName: 'mintemp_f')
  double get minTempF;
  @BuiltValueField(wireName: 'avgtemp_c')
  double get avgTempc;
  @BuiltValueField(wireName: 'avgtemp_f')
  double get avgTempF;
  @BuiltValueField(wireName: 'maxwind_mph')
  double get maxWindMPH;
  @BuiltValueField(wireName: 'maxwind_kph')
  double get maxWindKPH;
  @BuiltValueField(wireName: 'totalprecip_mm')
  double get totalPrecipMM;
  @BuiltValueField(wireName: 'totalprecip_in')
  double get totalPrecipIN;
  @BuiltValueField(wireName: 'avgvis_km')
  double get avgVisKm;
  @BuiltValueField(wireName: 'avgvis_miles')
  double get avgVisMi;
  @BuiltValueField(wireName: 'avghumidity')
  double get avgHumidity;
  @BuiltValueField(wireName: 'condition')
  Condition get condition;
  @BuiltValueField(wireName: 'uv')
  double get uv;


  Day._();

  factory Day([updates(DayBuilder b)]) = _$Day;

  String toJson() {
    return json.encode(serializers.serializeWith(Day.serializer, this));
  }

  static Day fromJson(String jsonString) {
    return serializers.deserializeWith(Day.serializer, json.decode(jsonString));
  }

  static Serializer<Day> get serializer => _$daySerializer;
}

abstract class Astro implements Built<Astro, AstroBuilder> {
  @BuiltValueField(wireName: 'sunrise')
  String get sunrise;
  @BuiltValueField(wireName: 'sunset')
  String get sunset;
  @BuiltValueField(wireName: 'moonrise')
  String get moonrise;
  @BuiltValueField(wireName: 'moonset')
  String get moonset;
  @BuiltValueField(wireName: 'moon_phase')
  String get moonPhase;
  @BuiltValueField(wireName: 'moon_illumination')
  String get moonIllumination;

  Astro._();

  factory Astro([updates(AstroBuilder b)]) = _$Astro;

  String toJson() {
    return json.encode(serializers.serializeWith(Astro.serializer, this));
  }

  static Astro fromJson(String jsonString) {
    return serializers.deserializeWith(Astro.serializer, json.decode(jsonString));
  }

  static Serializer<Astro> get serializer => _$astroSerializer;
}

abstract class Hour implements Built<Hour, HourBuilder> {
  @BuiltValueField(wireName: 'time_epoch')
  int get timeEpoch;
  @BuiltValueField(wireName: 'time')
  String get time;
  @BuiltValueField(wireName: 'temp_c')
  double get tempC;
  @BuiltValueField(wireName: 'temp_f')
  double get tempF;
  @BuiltValueField(wireName: 'is_day')
  int get isDay;
  @BuiltValueField(wireName: 'condition')
  Condition get condition;
  @BuiltValueField(wireName: 'wind_mph')
  double get windMph;
  @BuiltValueField(wireName: 'wind_kph')
  double get windKph;
  @BuiltValueField(wireName: 'wind_degree')
  int get windDegree;
  @BuiltValueField(wireName: 'wind_dir')
  String get windDir;
  @BuiltValueField(wireName: 'pressure_mb')
  double get pressureMb;
  @BuiltValueField(wireName: 'pressure_in')
  double get pressureIn;
  @BuiltValueField(wireName: 'precip_mm')
  double get precipMm;
  @BuiltValueField(wireName: 'precip_in')
  double get precipIn;
  @BuiltValueField(wireName: 'humidity')
  int get humidity;
  @BuiltValueField(wireName: 'cloud')
  int get cloud;
  @BuiltValueField(wireName: 'feelslike_c')
  double get feelslikeC;
  @BuiltValueField(wireName: 'feelslike_f')
  double get feelslikeF;
  @BuiltValueField(wireName: 'windchill_c')
  double get windchillC;
  @BuiltValueField(wireName: 'windchill_f')
  double get windchillF;
  @BuiltValueField(wireName: 'heatindex_c')
  double get heatindexC;
  @BuiltValueField(wireName: 'heatindex_f')
  double get heatindexF;
  @BuiltValueField(wireName: 'dewpoint_c')
  double get dewpointC;
  @BuiltValueField(wireName: 'dewpoint_f')
  double get dewpointF;
  @BuiltValueField(wireName: 'will_it_rain')
  int get willItRain;
  @BuiltValueField(wireName: 'chance_of_rain')
  String get chanceOfRain;
  @BuiltValueField(wireName: 'will_it_snow')
  int get willItSnow;
  @BuiltValueField(wireName: 'chance_of_snow')
  String get chanceOfSnow;
  @BuiltValueField(wireName: 'vis_km')
  double get visKm;
  @BuiltValueField(wireName: 'vis_miles')
  double get visMiles;

  Hour._();

  factory Hour([updates(HourBuilder b)]) = _$Hour;

  String toJson() {
    return json.encode(serializers.serializeWith(Hour.serializer, this));
  }

  static Hour fromJson(String jsonString) {
    return serializers.deserializeWith(Hour.serializer, json.decode(jsonString));
  }

  static Serializer<Hour> get serializer => _$hourSerializer;
}