// GENERATED CODE - DO NOT MODIFY BY HAND

part of apixu_weather;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApixuWeather> _$apixuWeatherSerializer =
    new _$ApixuWeatherSerializer();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();
Serializer<Current> _$currentSerializer = new _$CurrentSerializer();
Serializer<Condition> _$conditionSerializer = new _$ConditionSerializer();
Serializer<Forecast> _$forecastSerializer = new _$ForecastSerializer();
Serializer<Forecastday> _$forecastdaySerializer = new _$ForecastdaySerializer();
Serializer<Day> _$daySerializer = new _$DaySerializer();
Serializer<Astro> _$astroSerializer = new _$AstroSerializer();
Serializer<Hour> _$hourSerializer = new _$HourSerializer();

class _$ApixuWeatherSerializer implements StructuredSerializer<ApixuWeather> {
  @override
  final Iterable<Type> types = const [ApixuWeather, _$ApixuWeather];
  @override
  final String wireName = 'ApixuWeather';

  @override
  Iterable serialize(Serializers serializers, ApixuWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(Location)),
      'current',
      serializers.serialize(object.current,
          specifiedType: const FullType(Current)),
      'forecast',
      serializers.serialize(object.forecast,
          specifiedType: const FullType(Forecast)),
    ];

    return result;
  }

  @override
  ApixuWeather deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApixuWeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(Location)) as Location);
          break;
        case 'current':
          result.current.replace(serializers.deserialize(value,
              specifiedType: const FullType(Current)) as Current);
          break;
        case 'forecast':
          result.forecast.replace(serializers.deserialize(value,
              specifiedType: const FullType(Forecast)) as Forecast);
          break;
      }
    }

    return result.build();
  }
}

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'region',
      serializers.serialize(object.region,
          specifiedType: const FullType(String)),
      'country',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(double)),
      'lon',
      serializers.serialize(object.lon, specifiedType: const FullType(double)),
      'tz_id',
      serializers.serialize(object.tzId, specifiedType: const FullType(String)),
      'localtime_epoch',
      serializers.serialize(object.localtimeEpoch,
          specifiedType: const FullType(int)),
      'localtime',
      serializers.serialize(object.localtime,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'region':
          result.region = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'country':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'lon':
          result.lon = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'tz_id':
          result.tzId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'localtime_epoch':
          result.localtimeEpoch = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'localtime':
          result.localtime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CurrentSerializer implements StructuredSerializer<Current> {
  @override
  final Iterable<Type> types = const [Current, _$Current];
  @override
  final String wireName = 'Current';

  @override
  Iterable serialize(Serializers serializers, Current object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'last_updated_epoch',
      serializers.serialize(object.lastUpdatedEpoch,
          specifiedType: const FullType(int)),
      'last_updated',
      serializers.serialize(object.lastUpdated,
          specifiedType: const FullType(String)),
      'temp_c',
      serializers.serialize(object.tempC,
          specifiedType: const FullType(double)),
      'temp_f',
      serializers.serialize(object.tempF,
          specifiedType: const FullType(double)),
      'is_day',
      serializers.serialize(object.isDay, specifiedType: const FullType(int)),
      'condition',
      serializers.serialize(object.condition,
          specifiedType: const FullType(Condition)),
      'wind_mph',
      serializers.serialize(object.windMph,
          specifiedType: const FullType(double)),
      'wind_kph',
      serializers.serialize(object.windKph,
          specifiedType: const FullType(double)),
      'wind_degree',
      serializers.serialize(object.windDegree,
          specifiedType: const FullType(int)),
      'wind_dir',
      serializers.serialize(object.windDir,
          specifiedType: const FullType(String)),
      'pressure_mb',
      serializers.serialize(object.pressureMb,
          specifiedType: const FullType(double)),
      'pressure_in',
      serializers.serialize(object.pressureIn,
          specifiedType: const FullType(double)),
      'precip_mm',
      serializers.serialize(object.precipMm,
          specifiedType: const FullType(double)),
      'precip_in',
      serializers.serialize(object.precipIn,
          specifiedType: const FullType(double)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(int)),
      'cloud',
      serializers.serialize(object.cloud, specifiedType: const FullType(int)),
      'feelslike_c',
      serializers.serialize(object.feelslikeC,
          specifiedType: const FullType(double)),
      'feelslike_f',
      serializers.serialize(object.feelslikeF,
          specifiedType: const FullType(double)),
      'vis_km',
      serializers.serialize(object.visKm,
          specifiedType: const FullType(double)),
      'vis_miles',
      serializers.serialize(object.visMiles,
          specifiedType: const FullType(double)),
      'uv',
      serializers.serialize(object.uv, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Current deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'last_updated_epoch':
          result.lastUpdatedEpoch = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'last_updated':
          result.lastUpdated = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'temp_c':
          result.tempC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temp_f':
          result.tempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'is_day':
          result.isDay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'condition':
          result.condition.replace(serializers.deserialize(value,
              specifiedType: const FullType(Condition)) as Condition);
          break;
        case 'wind_mph':
          result.windMph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'wind_kph':
          result.windKph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'wind_degree':
          result.windDegree = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'wind_dir':
          result.windDir = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pressure_mb':
          result.pressureMb = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'pressure_in':
          result.pressureIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precip_mm':
          result.precipMm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precip_in':
          result.precipIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cloud':
          result.cloud = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'feelslike_c':
          result.feelslikeC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'feelslike_f':
          result.feelslikeF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vis_km':
          result.visKm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vis_miles':
          result.visMiles = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'uv':
          result.uv = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$ConditionSerializer implements StructuredSerializer<Condition> {
  @override
  final Iterable<Type> types = const [Condition, _$Condition];
  @override
  final String wireName = 'Condition';

  @override
  Iterable serialize(Serializers serializers, Condition object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon, specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Condition deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ConditionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ForecastSerializer implements StructuredSerializer<Forecast> {
  @override
  final Iterable<Type> types = const [Forecast, _$Forecast];
  @override
  final String wireName = 'Forecast';

  @override
  Iterable serialize(Serializers serializers, Forecast object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'forecastday',
      serializers.serialize(object.forecastday,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Forecastday)])),
    ];

    return result;
  }

  @override
  Forecast deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForecastBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'forecastday':
          result.forecastday.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Forecastday)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ForecastdaySerializer implements StructuredSerializer<Forecastday> {
  @override
  final Iterable<Type> types = const [Forecastday, _$Forecastday];
  @override
  final String wireName = 'Forecastday';

  @override
  Iterable serialize(Serializers serializers, Forecastday object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
      'date_epoch',
      serializers.serialize(object.dateEpoch,
          specifiedType: const FullType(int)),
      'day',
      serializers.serialize(object.day, specifiedType: const FullType(Day)),
      'astro',
      serializers.serialize(object.astro, specifiedType: const FullType(Astro)),
      'hour',
      serializers.serialize(object.hour,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Hour)])),
    ];

    return result;
  }

  @override
  Forecastday deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForecastdayBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date_epoch':
          result.dateEpoch = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'day':
          result.day.replace(serializers.deserialize(value,
              specifiedType: const FullType(Day)) as Day);
          break;
        case 'astro':
          result.astro.replace(serializers.deserialize(value,
              specifiedType: const FullType(Astro)) as Astro);
          break;
        case 'hour':
          result.hour.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Hour)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$DaySerializer implements StructuredSerializer<Day> {
  @override
  final Iterable<Type> types = const [Day, _$Day];
  @override
  final String wireName = 'Day';

  @override
  Iterable serialize(Serializers serializers, Day object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'maxtemp_c',
      serializers.serialize(object.maxTempC,
          specifiedType: const FullType(double)),
      'maxtemp_f',
      serializers.serialize(object.maxTempF,
          specifiedType: const FullType(double)),
      'mintemp_c',
      serializers.serialize(object.minTempC,
          specifiedType: const FullType(double)),
      'mintemp_f',
      serializers.serialize(object.minTempF,
          specifiedType: const FullType(double)),
      'avgtemp_c',
      serializers.serialize(object.avgTempc,
          specifiedType: const FullType(double)),
      'avgtemp_f',
      serializers.serialize(object.avgTempF,
          specifiedType: const FullType(double)),
      'maxwind_mph',
      serializers.serialize(object.maxWindMPH,
          specifiedType: const FullType(double)),
      'maxwind_kph',
      serializers.serialize(object.maxWindKPH,
          specifiedType: const FullType(double)),
      'totalprecip_mm',
      serializers.serialize(object.totalPrecipMM,
          specifiedType: const FullType(double)),
      'totalprecip_in',
      serializers.serialize(object.totalPrecipIN,
          specifiedType: const FullType(double)),
      'avgvis_km',
      serializers.serialize(object.avgVisKm,
          specifiedType: const FullType(double)),
      'avgvis_miles',
      serializers.serialize(object.avgVisMi,
          specifiedType: const FullType(double)),
      'avghumidity',
      serializers.serialize(object.avgHumidity,
          specifiedType: const FullType(double)),
      'condition',
      serializers.serialize(object.condition,
          specifiedType: const FullType(Condition)),
      'uv',
      serializers.serialize(object.uv, specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Day deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DayBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'maxtemp_c':
          result.maxTempC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxtemp_f':
          result.maxTempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'mintemp_c':
          result.minTempC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'mintemp_f':
          result.minTempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'avgtemp_c':
          result.avgTempc = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'avgtemp_f':
          result.avgTempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxwind_mph':
          result.maxWindMPH = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'maxwind_kph':
          result.maxWindKPH = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'totalprecip_mm':
          result.totalPrecipMM = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'totalprecip_in':
          result.totalPrecipIN = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'avgvis_km':
          result.avgVisKm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'avgvis_miles':
          result.avgVisMi = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'avghumidity':
          result.avgHumidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'condition':
          result.condition.replace(serializers.deserialize(value,
              specifiedType: const FullType(Condition)) as Condition);
          break;
        case 'uv':
          result.uv = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$AstroSerializer implements StructuredSerializer<Astro> {
  @override
  final Iterable<Type> types = const [Astro, _$Astro];
  @override
  final String wireName = 'Astro';

  @override
  Iterable serialize(Serializers serializers, Astro object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'sunrise',
      serializers.serialize(object.sunrise,
          specifiedType: const FullType(String)),
      'sunset',
      serializers.serialize(object.sunset,
          specifiedType: const FullType(String)),
      'moonrise',
      serializers.serialize(object.moonrise,
          specifiedType: const FullType(String)),
      'moonset',
      serializers.serialize(object.moonset,
          specifiedType: const FullType(String)),
      'moon_phase',
      serializers.serialize(object.moonPhase,
          specifiedType: const FullType(String)),
      'moon_illumination',
      serializers.serialize(object.moonIllumination,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Astro deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AstroBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sunrise':
          result.sunrise = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sunset':
          result.sunset = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'moonrise':
          result.moonrise = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'moonset':
          result.moonset = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'moon_phase':
          result.moonPhase = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'moon_illumination':
          result.moonIllumination = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HourSerializer implements StructuredSerializer<Hour> {
  @override
  final Iterable<Type> types = const [Hour, _$Hour];
  @override
  final String wireName = 'Hour';

  @override
  Iterable serialize(Serializers serializers, Hour object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'time_epoch',
      serializers.serialize(object.timeEpoch,
          specifiedType: const FullType(int)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(String)),
      'temp_c',
      serializers.serialize(object.tempC,
          specifiedType: const FullType(double)),
      'temp_f',
      serializers.serialize(object.tempF,
          specifiedType: const FullType(double)),
      'is_day',
      serializers.serialize(object.isDay, specifiedType: const FullType(int)),
      'condition',
      serializers.serialize(object.condition,
          specifiedType: const FullType(Condition)),
      'wind_mph',
      serializers.serialize(object.windMph,
          specifiedType: const FullType(double)),
      'wind_kph',
      serializers.serialize(object.windKph,
          specifiedType: const FullType(double)),
      'wind_degree',
      serializers.serialize(object.windDegree,
          specifiedType: const FullType(int)),
      'wind_dir',
      serializers.serialize(object.windDir,
          specifiedType: const FullType(String)),
      'pressure_mb',
      serializers.serialize(object.pressureMb,
          specifiedType: const FullType(double)),
      'pressure_in',
      serializers.serialize(object.pressureIn,
          specifiedType: const FullType(double)),
      'precip_mm',
      serializers.serialize(object.precipMm,
          specifiedType: const FullType(double)),
      'precip_in',
      serializers.serialize(object.precipIn,
          specifiedType: const FullType(double)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(int)),
      'cloud',
      serializers.serialize(object.cloud, specifiedType: const FullType(int)),
      'feelslike_c',
      serializers.serialize(object.feelslikeC,
          specifiedType: const FullType(double)),
      'feelslike_f',
      serializers.serialize(object.feelslikeF,
          specifiedType: const FullType(double)),
      'windchill_c',
      serializers.serialize(object.windchillC,
          specifiedType: const FullType(double)),
      'windchill_f',
      serializers.serialize(object.windchillF,
          specifiedType: const FullType(double)),
      'heatindex_c',
      serializers.serialize(object.heatindexC,
          specifiedType: const FullType(double)),
      'heatindex_f',
      serializers.serialize(object.heatindexF,
          specifiedType: const FullType(double)),
      'dewpoint_c',
      serializers.serialize(object.dewpointC,
          specifiedType: const FullType(double)),
      'dewpoint_f',
      serializers.serialize(object.dewpointF,
          specifiedType: const FullType(double)),
      'will_it_rain',
      serializers.serialize(object.willItRain,
          specifiedType: const FullType(int)),
      'chance_of_rain',
      serializers.serialize(object.chanceOfRain,
          specifiedType: const FullType(String)),
      'will_it_snow',
      serializers.serialize(object.willItSnow,
          specifiedType: const FullType(int)),
      'chance_of_snow',
      serializers.serialize(object.chanceOfSnow,
          specifiedType: const FullType(String)),
      'vis_km',
      serializers.serialize(object.visKm,
          specifiedType: const FullType(double)),
      'vis_miles',
      serializers.serialize(object.visMiles,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  Hour deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HourBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'time_epoch':
          result.timeEpoch = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'temp_c':
          result.tempC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temp_f':
          result.tempF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'is_day':
          result.isDay = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'condition':
          result.condition.replace(serializers.deserialize(value,
              specifiedType: const FullType(Condition)) as Condition);
          break;
        case 'wind_mph':
          result.windMph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'wind_kph':
          result.windKph = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'wind_degree':
          result.windDegree = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'wind_dir':
          result.windDir = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pressure_mb':
          result.pressureMb = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'pressure_in':
          result.pressureIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precip_mm':
          result.precipMm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precip_in':
          result.precipIn = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cloud':
          result.cloud = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'feelslike_c':
          result.feelslikeC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'feelslike_f':
          result.feelslikeF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windchill_c':
          result.windchillC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windchill_f':
          result.windchillF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'heatindex_c':
          result.heatindexC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'heatindex_f':
          result.heatindexF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dewpoint_c':
          result.dewpointC = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dewpoint_f':
          result.dewpointF = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'will_it_rain':
          result.willItRain = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'chance_of_rain':
          result.chanceOfRain = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'will_it_snow':
          result.willItSnow = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'chance_of_snow':
          result.chanceOfSnow = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vis_km':
          result.visKm = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vis_miles':
          result.visMiles = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$ApixuWeather extends ApixuWeather {
  @override
  final Location location;
  @override
  final Current current;
  @override
  final Forecast forecast;

  factory _$ApixuWeather([void updates(ApixuWeatherBuilder b)]) =>
      (new ApixuWeatherBuilder()..update(updates)).build();

  _$ApixuWeather._({this.location, this.current, this.forecast}) : super._() {
    if (location == null) {
      throw new BuiltValueNullFieldError('ApixuWeather', 'location');
    }
    if (current == null) {
      throw new BuiltValueNullFieldError('ApixuWeather', 'current');
    }
    if (forecast == null) {
      throw new BuiltValueNullFieldError('ApixuWeather', 'forecast');
    }
  }

  @override
  ApixuWeather rebuild(void updates(ApixuWeatherBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ApixuWeatherBuilder toBuilder() => new ApixuWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApixuWeather &&
        location == other.location &&
        current == other.current &&
        forecast == other.forecast;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, location.hashCode), current.hashCode), forecast.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApixuWeather')
          ..add('location', location)
          ..add('current', current)
          ..add('forecast', forecast))
        .toString();
  }
}

class ApixuWeatherBuilder
    implements Builder<ApixuWeather, ApixuWeatherBuilder> {
  _$ApixuWeather _$v;

  LocationBuilder _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder location) => _$this._location = location;

  CurrentBuilder _current;
  CurrentBuilder get current => _$this._current ??= new CurrentBuilder();
  set current(CurrentBuilder current) => _$this._current = current;

  ForecastBuilder _forecast;
  ForecastBuilder get forecast => _$this._forecast ??= new ForecastBuilder();
  set forecast(ForecastBuilder forecast) => _$this._forecast = forecast;

  ApixuWeatherBuilder();

  ApixuWeatherBuilder get _$this {
    if (_$v != null) {
      _location = _$v.location?.toBuilder();
      _current = _$v.current?.toBuilder();
      _forecast = _$v.forecast?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApixuWeather other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ApixuWeather;
  }

  @override
  void update(void updates(ApixuWeatherBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ApixuWeather build() {
    _$ApixuWeather _$result;
    try {
      _$result = _$v ??
          new _$ApixuWeather._(
              location: location.build(),
              current: current.build(),
              forecast: forecast.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
        _$failedField = 'current';
        current.build();
        _$failedField = 'forecast';
        forecast.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ApixuWeather', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Location extends Location {
  @override
  final String name;
  @override
  final String region;
  @override
  final String country;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final String tzId;
  @override
  final int localtimeEpoch;
  @override
  final String localtime;

  factory _$Location([void updates(LocationBuilder b)]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._(
      {this.name,
      this.region,
      this.country,
      this.lat,
      this.lon,
      this.tzId,
      this.localtimeEpoch,
      this.localtime})
      : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('Location', 'name');
    }
    if (region == null) {
      throw new BuiltValueNullFieldError('Location', 'region');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('Location', 'country');
    }
    if (lat == null) {
      throw new BuiltValueNullFieldError('Location', 'lat');
    }
    if (lon == null) {
      throw new BuiltValueNullFieldError('Location', 'lon');
    }
    if (tzId == null) {
      throw new BuiltValueNullFieldError('Location', 'tzId');
    }
    if (localtimeEpoch == null) {
      throw new BuiltValueNullFieldError('Location', 'localtimeEpoch');
    }
    if (localtime == null) {
      throw new BuiltValueNullFieldError('Location', 'localtime');
    }
  }

  @override
  Location rebuild(void updates(LocationBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        name == other.name &&
        region == other.region &&
        country == other.country &&
        lat == other.lat &&
        lon == other.lon &&
        tzId == other.tzId &&
        localtimeEpoch == other.localtimeEpoch &&
        localtime == other.localtime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), region.hashCode),
                            country.hashCode),
                        lat.hashCode),
                    lon.hashCode),
                tzId.hashCode),
            localtimeEpoch.hashCode),
        localtime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('name', name)
          ..add('region', region)
          ..add('country', country)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('tzId', tzId)
          ..add('localtimeEpoch', localtimeEpoch)
          ..add('localtime', localtime))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _region;
  String get region => _$this._region;
  set region(String region) => _$this._region = region;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  double _lat;
  double get lat => _$this._lat;
  set lat(double lat) => _$this._lat = lat;

  double _lon;
  double get lon => _$this._lon;
  set lon(double lon) => _$this._lon = lon;

  String _tzId;
  String get tzId => _$this._tzId;
  set tzId(String tzId) => _$this._tzId = tzId;

  int _localtimeEpoch;
  int get localtimeEpoch => _$this._localtimeEpoch;
  set localtimeEpoch(int localtimeEpoch) =>
      _$this._localtimeEpoch = localtimeEpoch;

  String _localtime;
  String get localtime => _$this._localtime;
  set localtime(String localtime) => _$this._localtime = localtime;

  LocationBuilder();

  LocationBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _region = _$v.region;
      _country = _$v.country;
      _lat = _$v.lat;
      _lon = _$v.lon;
      _tzId = _$v.tzId;
      _localtimeEpoch = _$v.localtimeEpoch;
      _localtime = _$v.localtime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Location;
  }

  @override
  void update(void updates(LocationBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    final _$result = _$v ??
        new _$Location._(
            name: name,
            region: region,
            country: country,
            lat: lat,
            lon: lon,
            tzId: tzId,
            localtimeEpoch: localtimeEpoch,
            localtime: localtime);
    replace(_$result);
    return _$result;
  }
}

class _$Current extends Current {
  @override
  final int lastUpdatedEpoch;
  @override
  final String lastUpdated;
  @override
  final double tempC;
  @override
  final double tempF;
  @override
  final int isDay;
  @override
  final Condition condition;
  @override
  final double windMph;
  @override
  final double windKph;
  @override
  final int windDegree;
  @override
  final String windDir;
  @override
  final double pressureMb;
  @override
  final double pressureIn;
  @override
  final double precipMm;
  @override
  final double precipIn;
  @override
  final int humidity;
  @override
  final int cloud;
  @override
  final double feelslikeC;
  @override
  final double feelslikeF;
  @override
  final double visKm;
  @override
  final double visMiles;
  @override
  final double uv;

  factory _$Current([void updates(CurrentBuilder b)]) =>
      (new CurrentBuilder()..update(updates)).build();

  _$Current._(
      {this.lastUpdatedEpoch,
      this.lastUpdated,
      this.tempC,
      this.tempF,
      this.isDay,
      this.condition,
      this.windMph,
      this.windKph,
      this.windDegree,
      this.windDir,
      this.pressureMb,
      this.pressureIn,
      this.precipMm,
      this.precipIn,
      this.humidity,
      this.cloud,
      this.feelslikeC,
      this.feelslikeF,
      this.visKm,
      this.visMiles,
      this.uv})
      : super._() {
    if (lastUpdatedEpoch == null) {
      throw new BuiltValueNullFieldError('Current', 'lastUpdatedEpoch');
    }
    if (lastUpdated == null) {
      throw new BuiltValueNullFieldError('Current', 'lastUpdated');
    }
    if (tempC == null) {
      throw new BuiltValueNullFieldError('Current', 'tempC');
    }
    if (tempF == null) {
      throw new BuiltValueNullFieldError('Current', 'tempF');
    }
    if (isDay == null) {
      throw new BuiltValueNullFieldError('Current', 'isDay');
    }
    if (condition == null) {
      throw new BuiltValueNullFieldError('Current', 'condition');
    }
    if (windMph == null) {
      throw new BuiltValueNullFieldError('Current', 'windMph');
    }
    if (windKph == null) {
      throw new BuiltValueNullFieldError('Current', 'windKph');
    }
    if (windDegree == null) {
      throw new BuiltValueNullFieldError('Current', 'windDegree');
    }
    if (windDir == null) {
      throw new BuiltValueNullFieldError('Current', 'windDir');
    }
    if (pressureMb == null) {
      throw new BuiltValueNullFieldError('Current', 'pressureMb');
    }
    if (pressureIn == null) {
      throw new BuiltValueNullFieldError('Current', 'pressureIn');
    }
    if (precipMm == null) {
      throw new BuiltValueNullFieldError('Current', 'precipMm');
    }
    if (precipIn == null) {
      throw new BuiltValueNullFieldError('Current', 'precipIn');
    }
    if (humidity == null) {
      throw new BuiltValueNullFieldError('Current', 'humidity');
    }
    if (cloud == null) {
      throw new BuiltValueNullFieldError('Current', 'cloud');
    }
    if (feelslikeC == null) {
      throw new BuiltValueNullFieldError('Current', 'feelslikeC');
    }
    if (feelslikeF == null) {
      throw new BuiltValueNullFieldError('Current', 'feelslikeF');
    }
    if (visKm == null) {
      throw new BuiltValueNullFieldError('Current', 'visKm');
    }
    if (visMiles == null) {
      throw new BuiltValueNullFieldError('Current', 'visMiles');
    }
    if (uv == null) {
      throw new BuiltValueNullFieldError('Current', 'uv');
    }
  }

  @override
  Current rebuild(void updates(CurrentBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentBuilder toBuilder() => new CurrentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Current &&
        lastUpdatedEpoch == other.lastUpdatedEpoch &&
        lastUpdated == other.lastUpdated &&
        tempC == other.tempC &&
        tempF == other.tempF &&
        isDay == other.isDay &&
        condition == other.condition &&
        windMph == other.windMph &&
        windKph == other.windKph &&
        windDegree == other.windDegree &&
        windDir == other.windDir &&
        pressureMb == other.pressureMb &&
        pressureIn == other.pressureIn &&
        precipMm == other.precipMm &&
        precipIn == other.precipIn &&
        humidity == other.humidity &&
        cloud == other.cloud &&
        feelslikeC == other.feelslikeC &&
        feelslikeF == other.feelslikeF &&
        visKm == other.visKm &&
        visMiles == other.visMiles &&
        uv == other.uv;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc(0, lastUpdatedEpoch.hashCode), lastUpdated.hashCode),
                                                                                tempC.hashCode),
                                                                            tempF.hashCode),
                                                                        isDay.hashCode),
                                                                    condition.hashCode),
                                                                windMph.hashCode),
                                                            windKph.hashCode),
                                                        windDegree.hashCode),
                                                    windDir.hashCode),
                                                pressureMb.hashCode),
                                            pressureIn.hashCode),
                                        precipMm.hashCode),
                                    precipIn.hashCode),
                                humidity.hashCode),
                            cloud.hashCode),
                        feelslikeC.hashCode),
                    feelslikeF.hashCode),
                visKm.hashCode),
            visMiles.hashCode),
        uv.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Current')
          ..add('lastUpdatedEpoch', lastUpdatedEpoch)
          ..add('lastUpdated', lastUpdated)
          ..add('tempC', tempC)
          ..add('tempF', tempF)
          ..add('isDay', isDay)
          ..add('condition', condition)
          ..add('windMph', windMph)
          ..add('windKph', windKph)
          ..add('windDegree', windDegree)
          ..add('windDir', windDir)
          ..add('pressureMb', pressureMb)
          ..add('pressureIn', pressureIn)
          ..add('precipMm', precipMm)
          ..add('precipIn', precipIn)
          ..add('humidity', humidity)
          ..add('cloud', cloud)
          ..add('feelslikeC', feelslikeC)
          ..add('feelslikeF', feelslikeF)
          ..add('visKm', visKm)
          ..add('visMiles', visMiles)
          ..add('uv', uv))
        .toString();
  }
}

class CurrentBuilder implements Builder<Current, CurrentBuilder> {
  _$Current _$v;

  int _lastUpdatedEpoch;
  int get lastUpdatedEpoch => _$this._lastUpdatedEpoch;
  set lastUpdatedEpoch(int lastUpdatedEpoch) =>
      _$this._lastUpdatedEpoch = lastUpdatedEpoch;

  String _lastUpdated;
  String get lastUpdated => _$this._lastUpdated;
  set lastUpdated(String lastUpdated) => _$this._lastUpdated = lastUpdated;

  double _tempC;
  double get tempC => _$this._tempC;
  set tempC(double tempC) => _$this._tempC = tempC;

  double _tempF;
  double get tempF => _$this._tempF;
  set tempF(double tempF) => _$this._tempF = tempF;

  int _isDay;
  int get isDay => _$this._isDay;
  set isDay(int isDay) => _$this._isDay = isDay;

  ConditionBuilder _condition;
  ConditionBuilder get condition =>
      _$this._condition ??= new ConditionBuilder();
  set condition(ConditionBuilder condition) => _$this._condition = condition;

  double _windMph;
  double get windMph => _$this._windMph;
  set windMph(double windMph) => _$this._windMph = windMph;

  double _windKph;
  double get windKph => _$this._windKph;
  set windKph(double windKph) => _$this._windKph = windKph;

  int _windDegree;
  int get windDegree => _$this._windDegree;
  set windDegree(int windDegree) => _$this._windDegree = windDegree;

  String _windDir;
  String get windDir => _$this._windDir;
  set windDir(String windDir) => _$this._windDir = windDir;

  double _pressureMb;
  double get pressureMb => _$this._pressureMb;
  set pressureMb(double pressureMb) => _$this._pressureMb = pressureMb;

  double _pressureIn;
  double get pressureIn => _$this._pressureIn;
  set pressureIn(double pressureIn) => _$this._pressureIn = pressureIn;

  double _precipMm;
  double get precipMm => _$this._precipMm;
  set precipMm(double precipMm) => _$this._precipMm = precipMm;

  double _precipIn;
  double get precipIn => _$this._precipIn;
  set precipIn(double precipIn) => _$this._precipIn = precipIn;

  int _humidity;
  int get humidity => _$this._humidity;
  set humidity(int humidity) => _$this._humidity = humidity;

  int _cloud;
  int get cloud => _$this._cloud;
  set cloud(int cloud) => _$this._cloud = cloud;

  double _feelslikeC;
  double get feelslikeC => _$this._feelslikeC;
  set feelslikeC(double feelslikeC) => _$this._feelslikeC = feelslikeC;

  double _feelslikeF;
  double get feelslikeF => _$this._feelslikeF;
  set feelslikeF(double feelslikeF) => _$this._feelslikeF = feelslikeF;

  double _visKm;
  double get visKm => _$this._visKm;
  set visKm(double visKm) => _$this._visKm = visKm;

  double _visMiles;
  double get visMiles => _$this._visMiles;
  set visMiles(double visMiles) => _$this._visMiles = visMiles;

  double _uv;
  double get uv => _$this._uv;
  set uv(double uv) => _$this._uv = uv;

  CurrentBuilder();

  CurrentBuilder get _$this {
    if (_$v != null) {
      _lastUpdatedEpoch = _$v.lastUpdatedEpoch;
      _lastUpdated = _$v.lastUpdated;
      _tempC = _$v.tempC;
      _tempF = _$v.tempF;
      _isDay = _$v.isDay;
      _condition = _$v.condition?.toBuilder();
      _windMph = _$v.windMph;
      _windKph = _$v.windKph;
      _windDegree = _$v.windDegree;
      _windDir = _$v.windDir;
      _pressureMb = _$v.pressureMb;
      _pressureIn = _$v.pressureIn;
      _precipMm = _$v.precipMm;
      _precipIn = _$v.precipIn;
      _humidity = _$v.humidity;
      _cloud = _$v.cloud;
      _feelslikeC = _$v.feelslikeC;
      _feelslikeF = _$v.feelslikeF;
      _visKm = _$v.visKm;
      _visMiles = _$v.visMiles;
      _uv = _$v.uv;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Current other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Current;
  }

  @override
  void update(void updates(CurrentBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Current build() {
    _$Current _$result;
    try {
      _$result = _$v ??
          new _$Current._(
              lastUpdatedEpoch: lastUpdatedEpoch,
              lastUpdated: lastUpdated,
              tempC: tempC,
              tempF: tempF,
              isDay: isDay,
              condition: condition.build(),
              windMph: windMph,
              windKph: windKph,
              windDegree: windDegree,
              windDir: windDir,
              pressureMb: pressureMb,
              pressureIn: pressureIn,
              precipMm: precipMm,
              precipIn: precipIn,
              humidity: humidity,
              cloud: cloud,
              feelslikeC: feelslikeC,
              feelslikeF: feelslikeF,
              visKm: visKm,
              visMiles: visMiles,
              uv: uv);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'condition';
        condition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Current', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Condition extends Condition {
  @override
  final String text;
  @override
  final String icon;
  @override
  final int code;

  factory _$Condition([void updates(ConditionBuilder b)]) =>
      (new ConditionBuilder()..update(updates)).build();

  _$Condition._({this.text, this.icon, this.code}) : super._() {
    if (text == null) {
      throw new BuiltValueNullFieldError('Condition', 'text');
    }
    if (icon == null) {
      throw new BuiltValueNullFieldError('Condition', 'icon');
    }
    if (code == null) {
      throw new BuiltValueNullFieldError('Condition', 'code');
    }
  }

  @override
  Condition rebuild(void updates(ConditionBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ConditionBuilder toBuilder() => new ConditionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Condition &&
        text == other.text &&
        icon == other.icon &&
        code == other.code;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, text.hashCode), icon.hashCode), code.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Condition')
          ..add('text', text)
          ..add('icon', icon)
          ..add('code', code))
        .toString();
  }
}

class ConditionBuilder implements Builder<Condition, ConditionBuilder> {
  _$Condition _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  ConditionBuilder();

  ConditionBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _icon = _$v.icon;
      _code = _$v.code;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Condition other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Condition;
  }

  @override
  void update(void updates(ConditionBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Condition build() {
    final _$result =
        _$v ?? new _$Condition._(text: text, icon: icon, code: code);
    replace(_$result);
    return _$result;
  }
}

class _$Forecast extends Forecast {
  @override
  final BuiltList<Forecastday> forecastday;

  factory _$Forecast([void updates(ForecastBuilder b)]) =>
      (new ForecastBuilder()..update(updates)).build();

  _$Forecast._({this.forecastday}) : super._() {
    if (forecastday == null) {
      throw new BuiltValueNullFieldError('Forecast', 'forecastday');
    }
  }

  @override
  Forecast rebuild(void updates(ForecastBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastBuilder toBuilder() => new ForecastBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Forecast && forecastday == other.forecastday;
  }

  @override
  int get hashCode {
    return $jf($jc(0, forecastday.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Forecast')
          ..add('forecastday', forecastday))
        .toString();
  }
}

class ForecastBuilder implements Builder<Forecast, ForecastBuilder> {
  _$Forecast _$v;

  ListBuilder<Forecastday> _forecastday;
  ListBuilder<Forecastday> get forecastday =>
      _$this._forecastday ??= new ListBuilder<Forecastday>();
  set forecastday(ListBuilder<Forecastday> forecastday) =>
      _$this._forecastday = forecastday;

  ForecastBuilder();

  ForecastBuilder get _$this {
    if (_$v != null) {
      _forecastday = _$v.forecastday?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Forecast other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Forecast;
  }

  @override
  void update(void updates(ForecastBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Forecast build() {
    _$Forecast _$result;
    try {
      _$result = _$v ?? new _$Forecast._(forecastday: forecastday.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'forecastday';
        forecastday.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Forecast', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Forecastday extends Forecastday {
  @override
  final String date;
  @override
  final int dateEpoch;
  @override
  final Day day;
  @override
  final Astro astro;
  @override
  final BuiltList<Hour> hour;

  factory _$Forecastday([void updates(ForecastdayBuilder b)]) =>
      (new ForecastdayBuilder()..update(updates)).build();

  _$Forecastday._({this.date, this.dateEpoch, this.day, this.astro, this.hour})
      : super._() {
    if (date == null) {
      throw new BuiltValueNullFieldError('Forecastday', 'date');
    }
    if (dateEpoch == null) {
      throw new BuiltValueNullFieldError('Forecastday', 'dateEpoch');
    }
    if (day == null) {
      throw new BuiltValueNullFieldError('Forecastday', 'day');
    }
    if (astro == null) {
      throw new BuiltValueNullFieldError('Forecastday', 'astro');
    }
    if (hour == null) {
      throw new BuiltValueNullFieldError('Forecastday', 'hour');
    }
  }

  @override
  Forecastday rebuild(void updates(ForecastdayBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ForecastdayBuilder toBuilder() => new ForecastdayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Forecastday &&
        date == other.date &&
        dateEpoch == other.dateEpoch &&
        day == other.day &&
        astro == other.astro &&
        hour == other.hour;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, date.hashCode), dateEpoch.hashCode), day.hashCode),
            astro.hashCode),
        hour.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Forecastday')
          ..add('date', date)
          ..add('dateEpoch', dateEpoch)
          ..add('day', day)
          ..add('astro', astro)
          ..add('hour', hour))
        .toString();
  }
}

class ForecastdayBuilder implements Builder<Forecastday, ForecastdayBuilder> {
  _$Forecastday _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  int _dateEpoch;
  int get dateEpoch => _$this._dateEpoch;
  set dateEpoch(int dateEpoch) => _$this._dateEpoch = dateEpoch;

  DayBuilder _day;
  DayBuilder get day => _$this._day ??= new DayBuilder();
  set day(DayBuilder day) => _$this._day = day;

  AstroBuilder _astro;
  AstroBuilder get astro => _$this._astro ??= new AstroBuilder();
  set astro(AstroBuilder astro) => _$this._astro = astro;

  ListBuilder<Hour> _hour;
  ListBuilder<Hour> get hour => _$this._hour ??= new ListBuilder<Hour>();
  set hour(ListBuilder<Hour> hour) => _$this._hour = hour;

  ForecastdayBuilder();

  ForecastdayBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _dateEpoch = _$v.dateEpoch;
      _day = _$v.day?.toBuilder();
      _astro = _$v.astro?.toBuilder();
      _hour = _$v.hour?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Forecastday other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Forecastday;
  }

  @override
  void update(void updates(ForecastdayBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Forecastday build() {
    _$Forecastday _$result;
    try {
      _$result = _$v ??
          new _$Forecastday._(
              date: date,
              dateEpoch: dateEpoch,
              day: day.build(),
              astro: astro.build(),
              hour: hour.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'day';
        day.build();
        _$failedField = 'astro';
        astro.build();
        _$failedField = 'hour';
        hour.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Forecastday', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Day extends Day {
  @override
  final double maxTempC;
  @override
  final double maxTempF;
  @override
  final double minTempC;
  @override
  final double minTempF;
  @override
  final double avgTempc;
  @override
  final double avgTempF;
  @override
  final double maxWindMPH;
  @override
  final double maxWindKPH;
  @override
  final double totalPrecipMM;
  @override
  final double totalPrecipIN;
  @override
  final double avgVisKm;
  @override
  final double avgVisMi;
  @override
  final double avgHumidity;
  @override
  final Condition condition;
  @override
  final double uv;

  factory _$Day([void updates(DayBuilder b)]) =>
      (new DayBuilder()..update(updates)).build();

  _$Day._(
      {this.maxTempC,
      this.maxTempF,
      this.minTempC,
      this.minTempF,
      this.avgTempc,
      this.avgTempF,
      this.maxWindMPH,
      this.maxWindKPH,
      this.totalPrecipMM,
      this.totalPrecipIN,
      this.avgVisKm,
      this.avgVisMi,
      this.avgHumidity,
      this.condition,
      this.uv})
      : super._() {
    if (maxTempC == null) {
      throw new BuiltValueNullFieldError('Day', 'maxTempC');
    }
    if (maxTempF == null) {
      throw new BuiltValueNullFieldError('Day', 'maxTempF');
    }
    if (minTempC == null) {
      throw new BuiltValueNullFieldError('Day', 'minTempC');
    }
    if (minTempF == null) {
      throw new BuiltValueNullFieldError('Day', 'minTempF');
    }
    if (avgTempc == null) {
      throw new BuiltValueNullFieldError('Day', 'avgTempc');
    }
    if (avgTempF == null) {
      throw new BuiltValueNullFieldError('Day', 'avgTempF');
    }
    if (maxWindMPH == null) {
      throw new BuiltValueNullFieldError('Day', 'maxWindMPH');
    }
    if (maxWindKPH == null) {
      throw new BuiltValueNullFieldError('Day', 'maxWindKPH');
    }
    if (totalPrecipMM == null) {
      throw new BuiltValueNullFieldError('Day', 'totalPrecipMM');
    }
    if (totalPrecipIN == null) {
      throw new BuiltValueNullFieldError('Day', 'totalPrecipIN');
    }
    if (avgVisKm == null) {
      throw new BuiltValueNullFieldError('Day', 'avgVisKm');
    }
    if (avgVisMi == null) {
      throw new BuiltValueNullFieldError('Day', 'avgVisMi');
    }
    if (avgHumidity == null) {
      throw new BuiltValueNullFieldError('Day', 'avgHumidity');
    }
    if (condition == null) {
      throw new BuiltValueNullFieldError('Day', 'condition');
    }
    if (uv == null) {
      throw new BuiltValueNullFieldError('Day', 'uv');
    }
  }

  @override
  Day rebuild(void updates(DayBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DayBuilder toBuilder() => new DayBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Day &&
        maxTempC == other.maxTempC &&
        maxTempF == other.maxTempF &&
        minTempC == other.minTempC &&
        minTempF == other.minTempF &&
        avgTempc == other.avgTempc &&
        avgTempF == other.avgTempF &&
        maxWindMPH == other.maxWindMPH &&
        maxWindKPH == other.maxWindKPH &&
        totalPrecipMM == other.totalPrecipMM &&
        totalPrecipIN == other.totalPrecipIN &&
        avgVisKm == other.avgVisKm &&
        avgVisMi == other.avgVisMi &&
        avgHumidity == other.avgHumidity &&
        condition == other.condition &&
        uv == other.uv;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                maxTempC
                                                                    .hashCode),
                                                            maxTempF.hashCode),
                                                        minTempC.hashCode),
                                                    minTempF.hashCode),
                                                avgTempc.hashCode),
                                            avgTempF.hashCode),
                                        maxWindMPH.hashCode),
                                    maxWindKPH.hashCode),
                                totalPrecipMM.hashCode),
                            totalPrecipIN.hashCode),
                        avgVisKm.hashCode),
                    avgVisMi.hashCode),
                avgHumidity.hashCode),
            condition.hashCode),
        uv.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Day')
          ..add('maxTempC', maxTempC)
          ..add('maxTempF', maxTempF)
          ..add('minTempC', minTempC)
          ..add('minTempF', minTempF)
          ..add('avgTempc', avgTempc)
          ..add('avgTempF', avgTempF)
          ..add('maxWindMPH', maxWindMPH)
          ..add('maxWindKPH', maxWindKPH)
          ..add('totalPrecipMM', totalPrecipMM)
          ..add('totalPrecipIN', totalPrecipIN)
          ..add('avgVisKm', avgVisKm)
          ..add('avgVisMi', avgVisMi)
          ..add('avgHumidity', avgHumidity)
          ..add('condition', condition)
          ..add('uv', uv))
        .toString();
  }
}

class DayBuilder implements Builder<Day, DayBuilder> {
  _$Day _$v;

  double _maxTempC;
  double get maxTempC => _$this._maxTempC;
  set maxTempC(double maxTempC) => _$this._maxTempC = maxTempC;

  double _maxTempF;
  double get maxTempF => _$this._maxTempF;
  set maxTempF(double maxTempF) => _$this._maxTempF = maxTempF;

  double _minTempC;
  double get minTempC => _$this._minTempC;
  set minTempC(double minTempC) => _$this._minTempC = minTempC;

  double _minTempF;
  double get minTempF => _$this._minTempF;
  set minTempF(double minTempF) => _$this._minTempF = minTempF;

  double _avgTempc;
  double get avgTempc => _$this._avgTempc;
  set avgTempc(double avgTempc) => _$this._avgTempc = avgTempc;

  double _avgTempF;
  double get avgTempF => _$this._avgTempF;
  set avgTempF(double avgTempF) => _$this._avgTempF = avgTempF;

  double _maxWindMPH;
  double get maxWindMPH => _$this._maxWindMPH;
  set maxWindMPH(double maxWindMPH) => _$this._maxWindMPH = maxWindMPH;

  double _maxWindKPH;
  double get maxWindKPH => _$this._maxWindKPH;
  set maxWindKPH(double maxWindKPH) => _$this._maxWindKPH = maxWindKPH;

  double _totalPrecipMM;
  double get totalPrecipMM => _$this._totalPrecipMM;
  set totalPrecipMM(double totalPrecipMM) =>
      _$this._totalPrecipMM = totalPrecipMM;

  double _totalPrecipIN;
  double get totalPrecipIN => _$this._totalPrecipIN;
  set totalPrecipIN(double totalPrecipIN) =>
      _$this._totalPrecipIN = totalPrecipIN;

  double _avgVisKm;
  double get avgVisKm => _$this._avgVisKm;
  set avgVisKm(double avgVisKm) => _$this._avgVisKm = avgVisKm;

  double _avgVisMi;
  double get avgVisMi => _$this._avgVisMi;
  set avgVisMi(double avgVisMi) => _$this._avgVisMi = avgVisMi;

  double _avgHumidity;
  double get avgHumidity => _$this._avgHumidity;
  set avgHumidity(double avgHumidity) => _$this._avgHumidity = avgHumidity;

  ConditionBuilder _condition;
  ConditionBuilder get condition =>
      _$this._condition ??= new ConditionBuilder();
  set condition(ConditionBuilder condition) => _$this._condition = condition;

  double _uv;
  double get uv => _$this._uv;
  set uv(double uv) => _$this._uv = uv;

  DayBuilder();

  DayBuilder get _$this {
    if (_$v != null) {
      _maxTempC = _$v.maxTempC;
      _maxTempF = _$v.maxTempF;
      _minTempC = _$v.minTempC;
      _minTempF = _$v.minTempF;
      _avgTempc = _$v.avgTempc;
      _avgTempF = _$v.avgTempF;
      _maxWindMPH = _$v.maxWindMPH;
      _maxWindKPH = _$v.maxWindKPH;
      _totalPrecipMM = _$v.totalPrecipMM;
      _totalPrecipIN = _$v.totalPrecipIN;
      _avgVisKm = _$v.avgVisKm;
      _avgVisMi = _$v.avgVisMi;
      _avgHumidity = _$v.avgHumidity;
      _condition = _$v.condition?.toBuilder();
      _uv = _$v.uv;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Day other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Day;
  }

  @override
  void update(void updates(DayBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Day build() {
    _$Day _$result;
    try {
      _$result = _$v ??
          new _$Day._(
              maxTempC: maxTempC,
              maxTempF: maxTempF,
              minTempC: minTempC,
              minTempF: minTempF,
              avgTempc: avgTempc,
              avgTempF: avgTempF,
              maxWindMPH: maxWindMPH,
              maxWindKPH: maxWindKPH,
              totalPrecipMM: totalPrecipMM,
              totalPrecipIN: totalPrecipIN,
              avgVisKm: avgVisKm,
              avgVisMi: avgVisMi,
              avgHumidity: avgHumidity,
              condition: condition.build(),
              uv: uv);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'condition';
        condition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Day', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Astro extends Astro {
  @override
  final String sunrise;
  @override
  final String sunset;
  @override
  final String moonrise;
  @override
  final String moonset;
  @override
  final String moonPhase;
  @override
  final String moonIllumination;

  factory _$Astro([void updates(AstroBuilder b)]) =>
      (new AstroBuilder()..update(updates)).build();

  _$Astro._(
      {this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset,
      this.moonPhase,
      this.moonIllumination})
      : super._() {
    if (sunrise == null) {
      throw new BuiltValueNullFieldError('Astro', 'sunrise');
    }
    if (sunset == null) {
      throw new BuiltValueNullFieldError('Astro', 'sunset');
    }
    if (moonrise == null) {
      throw new BuiltValueNullFieldError('Astro', 'moonrise');
    }
    if (moonset == null) {
      throw new BuiltValueNullFieldError('Astro', 'moonset');
    }
    if (moonPhase == null) {
      throw new BuiltValueNullFieldError('Astro', 'moonPhase');
    }
    if (moonIllumination == null) {
      throw new BuiltValueNullFieldError('Astro', 'moonIllumination');
    }
  }

  @override
  Astro rebuild(void updates(AstroBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AstroBuilder toBuilder() => new AstroBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Astro &&
        sunrise == other.sunrise &&
        sunset == other.sunset &&
        moonrise == other.moonrise &&
        moonset == other.moonset &&
        moonPhase == other.moonPhase &&
        moonIllumination == other.moonIllumination;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, sunrise.hashCode), sunset.hashCode),
                    moonrise.hashCode),
                moonset.hashCode),
            moonPhase.hashCode),
        moonIllumination.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Astro')
          ..add('sunrise', sunrise)
          ..add('sunset', sunset)
          ..add('moonrise', moonrise)
          ..add('moonset', moonset)
          ..add('moonPhase', moonPhase)
          ..add('moonIllumination', moonIllumination))
        .toString();
  }
}

class AstroBuilder implements Builder<Astro, AstroBuilder> {
  _$Astro _$v;

  String _sunrise;
  String get sunrise => _$this._sunrise;
  set sunrise(String sunrise) => _$this._sunrise = sunrise;

  String _sunset;
  String get sunset => _$this._sunset;
  set sunset(String sunset) => _$this._sunset = sunset;

  String _moonrise;
  String get moonrise => _$this._moonrise;
  set moonrise(String moonrise) => _$this._moonrise = moonrise;

  String _moonset;
  String get moonset => _$this._moonset;
  set moonset(String moonset) => _$this._moonset = moonset;

  String _moonPhase;
  String get moonPhase => _$this._moonPhase;
  set moonPhase(String moonPhase) => _$this._moonPhase = moonPhase;

  String _moonIllumination;
  String get moonIllumination => _$this._moonIllumination;
  set moonIllumination(String moonIllumination) =>
      _$this._moonIllumination = moonIllumination;

  AstroBuilder();

  AstroBuilder get _$this {
    if (_$v != null) {
      _sunrise = _$v.sunrise;
      _sunset = _$v.sunset;
      _moonrise = _$v.moonrise;
      _moonset = _$v.moonset;
      _moonPhase = _$v.moonPhase;
      _moonIllumination = _$v.moonIllumination;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Astro other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Astro;
  }

  @override
  void update(void updates(AstroBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Astro build() {
    final _$result = _$v ??
        new _$Astro._(
            sunrise: sunrise,
            sunset: sunset,
            moonrise: moonrise,
            moonset: moonset,
            moonPhase: moonPhase,
            moonIllumination: moonIllumination);
    replace(_$result);
    return _$result;
  }
}

class _$Hour extends Hour {
  @override
  final int timeEpoch;
  @override
  final String time;
  @override
  final double tempC;
  @override
  final double tempF;
  @override
  final int isDay;
  @override
  final Condition condition;
  @override
  final double windMph;
  @override
  final double windKph;
  @override
  final int windDegree;
  @override
  final String windDir;
  @override
  final double pressureMb;
  @override
  final double pressureIn;
  @override
  final double precipMm;
  @override
  final double precipIn;
  @override
  final int humidity;
  @override
  final int cloud;
  @override
  final double feelslikeC;
  @override
  final double feelslikeF;
  @override
  final double windchillC;
  @override
  final double windchillF;
  @override
  final double heatindexC;
  @override
  final double heatindexF;
  @override
  final double dewpointC;
  @override
  final double dewpointF;
  @override
  final int willItRain;
  @override
  final String chanceOfRain;
  @override
  final int willItSnow;
  @override
  final String chanceOfSnow;
  @override
  final double visKm;
  @override
  final double visMiles;

  factory _$Hour([void updates(HourBuilder b)]) =>
      (new HourBuilder()..update(updates)).build();

  _$Hour._(
      {this.timeEpoch,
      this.time,
      this.tempC,
      this.tempF,
      this.isDay,
      this.condition,
      this.windMph,
      this.windKph,
      this.windDegree,
      this.windDir,
      this.pressureMb,
      this.pressureIn,
      this.precipMm,
      this.precipIn,
      this.humidity,
      this.cloud,
      this.feelslikeC,
      this.feelslikeF,
      this.windchillC,
      this.windchillF,
      this.heatindexC,
      this.heatindexF,
      this.dewpointC,
      this.dewpointF,
      this.willItRain,
      this.chanceOfRain,
      this.willItSnow,
      this.chanceOfSnow,
      this.visKm,
      this.visMiles})
      : super._() {
    if (timeEpoch == null) {
      throw new BuiltValueNullFieldError('Hour', 'timeEpoch');
    }
    if (time == null) {
      throw new BuiltValueNullFieldError('Hour', 'time');
    }
    if (tempC == null) {
      throw new BuiltValueNullFieldError('Hour', 'tempC');
    }
    if (tempF == null) {
      throw new BuiltValueNullFieldError('Hour', 'tempF');
    }
    if (isDay == null) {
      throw new BuiltValueNullFieldError('Hour', 'isDay');
    }
    if (condition == null) {
      throw new BuiltValueNullFieldError('Hour', 'condition');
    }
    if (windMph == null) {
      throw new BuiltValueNullFieldError('Hour', 'windMph');
    }
    if (windKph == null) {
      throw new BuiltValueNullFieldError('Hour', 'windKph');
    }
    if (windDegree == null) {
      throw new BuiltValueNullFieldError('Hour', 'windDegree');
    }
    if (windDir == null) {
      throw new BuiltValueNullFieldError('Hour', 'windDir');
    }
    if (pressureMb == null) {
      throw new BuiltValueNullFieldError('Hour', 'pressureMb');
    }
    if (pressureIn == null) {
      throw new BuiltValueNullFieldError('Hour', 'pressureIn');
    }
    if (precipMm == null) {
      throw new BuiltValueNullFieldError('Hour', 'precipMm');
    }
    if (precipIn == null) {
      throw new BuiltValueNullFieldError('Hour', 'precipIn');
    }
    if (humidity == null) {
      throw new BuiltValueNullFieldError('Hour', 'humidity');
    }
    if (cloud == null) {
      throw new BuiltValueNullFieldError('Hour', 'cloud');
    }
    if (feelslikeC == null) {
      throw new BuiltValueNullFieldError('Hour', 'feelslikeC');
    }
    if (feelslikeF == null) {
      throw new BuiltValueNullFieldError('Hour', 'feelslikeF');
    }
    if (windchillC == null) {
      throw new BuiltValueNullFieldError('Hour', 'windchillC');
    }
    if (windchillF == null) {
      throw new BuiltValueNullFieldError('Hour', 'windchillF');
    }
    if (heatindexC == null) {
      throw new BuiltValueNullFieldError('Hour', 'heatindexC');
    }
    if (heatindexF == null) {
      throw new BuiltValueNullFieldError('Hour', 'heatindexF');
    }
    if (dewpointC == null) {
      throw new BuiltValueNullFieldError('Hour', 'dewpointC');
    }
    if (dewpointF == null) {
      throw new BuiltValueNullFieldError('Hour', 'dewpointF');
    }
    if (willItRain == null) {
      throw new BuiltValueNullFieldError('Hour', 'willItRain');
    }
    if (chanceOfRain == null) {
      throw new BuiltValueNullFieldError('Hour', 'chanceOfRain');
    }
    if (willItSnow == null) {
      throw new BuiltValueNullFieldError('Hour', 'willItSnow');
    }
    if (chanceOfSnow == null) {
      throw new BuiltValueNullFieldError('Hour', 'chanceOfSnow');
    }
    if (visKm == null) {
      throw new BuiltValueNullFieldError('Hour', 'visKm');
    }
    if (visMiles == null) {
      throw new BuiltValueNullFieldError('Hour', 'visMiles');
    }
  }

  @override
  Hour rebuild(void updates(HourBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HourBuilder toBuilder() => new HourBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Hour &&
        timeEpoch == other.timeEpoch &&
        time == other.time &&
        tempC == other.tempC &&
        tempF == other.tempF &&
        isDay == other.isDay &&
        condition == other.condition &&
        windMph == other.windMph &&
        windKph == other.windKph &&
        windDegree == other.windDegree &&
        windDir == other.windDir &&
        pressureMb == other.pressureMb &&
        pressureIn == other.pressureIn &&
        precipMm == other.precipMm &&
        precipIn == other.precipIn &&
        humidity == other.humidity &&
        cloud == other.cloud &&
        feelslikeC == other.feelslikeC &&
        feelslikeF == other.feelslikeF &&
        windchillC == other.windchillC &&
        windchillF == other.windchillF &&
        heatindexC == other.heatindexC &&
        heatindexF == other.heatindexF &&
        dewpointC == other.dewpointC &&
        dewpointF == other.dewpointF &&
        willItRain == other.willItRain &&
        chanceOfRain == other.chanceOfRain &&
        willItSnow == other.willItSnow &&
        chanceOfSnow == other.chanceOfSnow &&
        visKm == other.visKm &&
        visMiles == other.visMiles;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, timeEpoch.hashCode), time.hashCode), tempC.hashCode), tempF.hashCode), isDay.hashCode), condition.hashCode), windMph.hashCode), windKph.hashCode), windDegree.hashCode), windDir.hashCode), pressureMb.hashCode),
                                                                                pressureIn.hashCode),
                                                                            precipMm.hashCode),
                                                                        precipIn.hashCode),
                                                                    humidity.hashCode),
                                                                cloud.hashCode),
                                                            feelslikeC.hashCode),
                                                        feelslikeF.hashCode),
                                                    windchillC.hashCode),
                                                windchillF.hashCode),
                                            heatindexC.hashCode),
                                        heatindexF.hashCode),
                                    dewpointC.hashCode),
                                dewpointF.hashCode),
                            willItRain.hashCode),
                        chanceOfRain.hashCode),
                    willItSnow.hashCode),
                chanceOfSnow.hashCode),
            visKm.hashCode),
        visMiles.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Hour')
          ..add('timeEpoch', timeEpoch)
          ..add('time', time)
          ..add('tempC', tempC)
          ..add('tempF', tempF)
          ..add('isDay', isDay)
          ..add('condition', condition)
          ..add('windMph', windMph)
          ..add('windKph', windKph)
          ..add('windDegree', windDegree)
          ..add('windDir', windDir)
          ..add('pressureMb', pressureMb)
          ..add('pressureIn', pressureIn)
          ..add('precipMm', precipMm)
          ..add('precipIn', precipIn)
          ..add('humidity', humidity)
          ..add('cloud', cloud)
          ..add('feelslikeC', feelslikeC)
          ..add('feelslikeF', feelslikeF)
          ..add('windchillC', windchillC)
          ..add('windchillF', windchillF)
          ..add('heatindexC', heatindexC)
          ..add('heatindexF', heatindexF)
          ..add('dewpointC', dewpointC)
          ..add('dewpointF', dewpointF)
          ..add('willItRain', willItRain)
          ..add('chanceOfRain', chanceOfRain)
          ..add('willItSnow', willItSnow)
          ..add('chanceOfSnow', chanceOfSnow)
          ..add('visKm', visKm)
          ..add('visMiles', visMiles))
        .toString();
  }
}

class HourBuilder implements Builder<Hour, HourBuilder> {
  _$Hour _$v;

  int _timeEpoch;
  int get timeEpoch => _$this._timeEpoch;
  set timeEpoch(int timeEpoch) => _$this._timeEpoch = timeEpoch;

  String _time;
  String get time => _$this._time;
  set time(String time) => _$this._time = time;

  double _tempC;
  double get tempC => _$this._tempC;
  set tempC(double tempC) => _$this._tempC = tempC;

  double _tempF;
  double get tempF => _$this._tempF;
  set tempF(double tempF) => _$this._tempF = tempF;

  int _isDay;
  int get isDay => _$this._isDay;
  set isDay(int isDay) => _$this._isDay = isDay;

  ConditionBuilder _condition;
  ConditionBuilder get condition =>
      _$this._condition ??= new ConditionBuilder();
  set condition(ConditionBuilder condition) => _$this._condition = condition;

  double _windMph;
  double get windMph => _$this._windMph;
  set windMph(double windMph) => _$this._windMph = windMph;

  double _windKph;
  double get windKph => _$this._windKph;
  set windKph(double windKph) => _$this._windKph = windKph;

  int _windDegree;
  int get windDegree => _$this._windDegree;
  set windDegree(int windDegree) => _$this._windDegree = windDegree;

  String _windDir;
  String get windDir => _$this._windDir;
  set windDir(String windDir) => _$this._windDir = windDir;

  double _pressureMb;
  double get pressureMb => _$this._pressureMb;
  set pressureMb(double pressureMb) => _$this._pressureMb = pressureMb;

  double _pressureIn;
  double get pressureIn => _$this._pressureIn;
  set pressureIn(double pressureIn) => _$this._pressureIn = pressureIn;

  double _precipMm;
  double get precipMm => _$this._precipMm;
  set precipMm(double precipMm) => _$this._precipMm = precipMm;

  double _precipIn;
  double get precipIn => _$this._precipIn;
  set precipIn(double precipIn) => _$this._precipIn = precipIn;

  int _humidity;
  int get humidity => _$this._humidity;
  set humidity(int humidity) => _$this._humidity = humidity;

  int _cloud;
  int get cloud => _$this._cloud;
  set cloud(int cloud) => _$this._cloud = cloud;

  double _feelslikeC;
  double get feelslikeC => _$this._feelslikeC;
  set feelslikeC(double feelslikeC) => _$this._feelslikeC = feelslikeC;

  double _feelslikeF;
  double get feelslikeF => _$this._feelslikeF;
  set feelslikeF(double feelslikeF) => _$this._feelslikeF = feelslikeF;

  double _windchillC;
  double get windchillC => _$this._windchillC;
  set windchillC(double windchillC) => _$this._windchillC = windchillC;

  double _windchillF;
  double get windchillF => _$this._windchillF;
  set windchillF(double windchillF) => _$this._windchillF = windchillF;

  double _heatindexC;
  double get heatindexC => _$this._heatindexC;
  set heatindexC(double heatindexC) => _$this._heatindexC = heatindexC;

  double _heatindexF;
  double get heatindexF => _$this._heatindexF;
  set heatindexF(double heatindexF) => _$this._heatindexF = heatindexF;

  double _dewpointC;
  double get dewpointC => _$this._dewpointC;
  set dewpointC(double dewpointC) => _$this._dewpointC = dewpointC;

  double _dewpointF;
  double get dewpointF => _$this._dewpointF;
  set dewpointF(double dewpointF) => _$this._dewpointF = dewpointF;

  int _willItRain;
  int get willItRain => _$this._willItRain;
  set willItRain(int willItRain) => _$this._willItRain = willItRain;

  String _chanceOfRain;
  String get chanceOfRain => _$this._chanceOfRain;
  set chanceOfRain(String chanceOfRain) => _$this._chanceOfRain = chanceOfRain;

  int _willItSnow;
  int get willItSnow => _$this._willItSnow;
  set willItSnow(int willItSnow) => _$this._willItSnow = willItSnow;

  String _chanceOfSnow;
  String get chanceOfSnow => _$this._chanceOfSnow;
  set chanceOfSnow(String chanceOfSnow) => _$this._chanceOfSnow = chanceOfSnow;

  double _visKm;
  double get visKm => _$this._visKm;
  set visKm(double visKm) => _$this._visKm = visKm;

  double _visMiles;
  double get visMiles => _$this._visMiles;
  set visMiles(double visMiles) => _$this._visMiles = visMiles;

  HourBuilder();

  HourBuilder get _$this {
    if (_$v != null) {
      _timeEpoch = _$v.timeEpoch;
      _time = _$v.time;
      _tempC = _$v.tempC;
      _tempF = _$v.tempF;
      _isDay = _$v.isDay;
      _condition = _$v.condition?.toBuilder();
      _windMph = _$v.windMph;
      _windKph = _$v.windKph;
      _windDegree = _$v.windDegree;
      _windDir = _$v.windDir;
      _pressureMb = _$v.pressureMb;
      _pressureIn = _$v.pressureIn;
      _precipMm = _$v.precipMm;
      _precipIn = _$v.precipIn;
      _humidity = _$v.humidity;
      _cloud = _$v.cloud;
      _feelslikeC = _$v.feelslikeC;
      _feelslikeF = _$v.feelslikeF;
      _windchillC = _$v.windchillC;
      _windchillF = _$v.windchillF;
      _heatindexC = _$v.heatindexC;
      _heatindexF = _$v.heatindexF;
      _dewpointC = _$v.dewpointC;
      _dewpointF = _$v.dewpointF;
      _willItRain = _$v.willItRain;
      _chanceOfRain = _$v.chanceOfRain;
      _willItSnow = _$v.willItSnow;
      _chanceOfSnow = _$v.chanceOfSnow;
      _visKm = _$v.visKm;
      _visMiles = _$v.visMiles;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Hour other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Hour;
  }

  @override
  void update(void updates(HourBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Hour build() {
    _$Hour _$result;
    try {
      _$result = _$v ??
          new _$Hour._(
              timeEpoch: timeEpoch,
              time: time,
              tempC: tempC,
              tempF: tempF,
              isDay: isDay,
              condition: condition.build(),
              windMph: windMph,
              windKph: windKph,
              windDegree: windDegree,
              windDir: windDir,
              pressureMb: pressureMb,
              pressureIn: pressureIn,
              precipMm: precipMm,
              precipIn: precipIn,
              humidity: humidity,
              cloud: cloud,
              feelslikeC: feelslikeC,
              feelslikeF: feelslikeF,
              windchillC: windchillC,
              windchillF: windchillF,
              heatindexC: heatindexC,
              heatindexF: heatindexF,
              dewpointC: dewpointC,
              dewpointF: dewpointF,
              willItRain: willItRain,
              chanceOfRain: chanceOfRain,
              willItSnow: willItSnow,
              chanceOfSnow: chanceOfSnow,
              visKm: visKm,
              visMiles: visMiles);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'condition';
        condition.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Hour', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
