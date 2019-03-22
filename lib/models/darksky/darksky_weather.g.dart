// GENERATED CODE - DO NOT MODIFY BY HAND

part of darksky_weather;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DarkSkyWeather> _$darkSkyWeatherSerializer =
    new _$DarkSkyWeatherSerializer();
Serializer<Currently> _$currentlySerializer = new _$CurrentlySerializer();
Serializer<Minutely> _$minutelySerializer = new _$MinutelySerializer();
Serializer<Hourly> _$hourlySerializer = new _$HourlySerializer();
Serializer<Daily> _$dailySerializer = new _$DailySerializer();
Serializer<Alerts> _$alertsSerializer = new _$AlertsSerializer();
Serializer<Flags> _$flagsSerializer = new _$FlagsSerializer();
Serializer<MinuteData> _$minuteDataSerializer = new _$MinuteDataSerializer();
Serializer<HourData> _$hourDataSerializer = new _$HourDataSerializer();
Serializer<DailyData> _$dailyDataSerializer = new _$DailyDataSerializer();

class _$DarkSkyWeatherSerializer
    implements StructuredSerializer<DarkSkyWeather> {
  @override
  final Iterable<Type> types = const [DarkSkyWeather, _$DarkSkyWeather];
  @override
  final String wireName = 'DarkSkyWeather';

  @override
  Iterable serialize(Serializers serializers, DarkSkyWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
      'timezone',
      serializers.serialize(object.timezone,
          specifiedType: const FullType(String)),
    ];
    if (object.currently != null) {
      result
        ..add('currently')
        ..add(serializers.serialize(object.currently,
            specifiedType: const FullType(Currently)));
    }
    if (object.minutely != null) {
      result
        ..add('minutely')
        ..add(serializers.serialize(object.minutely,
            specifiedType: const FullType(Minutely)));
    }
    if (object.hourly != null) {
      result
        ..add('hourly')
        ..add(serializers.serialize(object.hourly,
            specifiedType: const FullType(Hourly)));
    }
    if (object.daily != null) {
      result
        ..add('daily')
        ..add(serializers.serialize(object.daily,
            specifiedType: const FullType(Daily)));
    }
    if (object.alerts != null) {
      result
        ..add('alerts')
        ..add(serializers.serialize(object.alerts,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Alerts)])));
    }
    if (object.flags != null) {
      result
        ..add('flags')
        ..add(serializers.serialize(object.flags,
            specifiedType: const FullType(Flags)));
    }
    if (object.offset != null) {
      result
        ..add('offset')
        ..add(serializers.serialize(object.offset,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  DarkSkyWeather deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DarkSkyWeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'timezone':
          result.timezone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'currently':
          result.currently.replace(serializers.deserialize(value,
              specifiedType: const FullType(Currently)) as Currently);
          break;
        case 'minutely':
          result.minutely.replace(serializers.deserialize(value,
              specifiedType: const FullType(Minutely)) as Minutely);
          break;
        case 'hourly':
          result.hourly.replace(serializers.deserialize(value,
              specifiedType: const FullType(Hourly)) as Hourly);
          break;
        case 'daily':
          result.daily.replace(serializers.deserialize(value,
              specifiedType: const FullType(Daily)) as Daily);
          break;
        case 'alerts':
          result.alerts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Alerts)]))
              as BuiltList);
          break;
        case 'flags':
          result.flags.replace(serializers.deserialize(value,
              specifiedType: const FullType(Flags)) as Flags);
          break;
        case 'offset':
          result.offset = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$CurrentlySerializer implements StructuredSerializer<Currently> {
  @override
  final Iterable<Type> types = const [Currently, _$Currently];
  @override
  final String wireName = 'Currently';

  @override
  Iterable serialize(Serializers serializers, Currently object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(int)),
    ];
    if (object.summary != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(object.summary,
            specifiedType: const FullType(String)));
    }
    if (object.icon != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(object.icon,
            specifiedType: const FullType(String)));
    }
    if (object.nearestStormDistance != null) {
      result
        ..add('nearestStormDistance')
        ..add(serializers.serialize(object.nearestStormDistance,
            specifiedType: const FullType(double)));
    }
    if (object.nearestStormBearing != null) {
      result
        ..add('nearestStormBearing')
        ..add(serializers.serialize(object.nearestStormBearing,
            specifiedType: const FullType(int)));
    }
    if (object.precipIntensity != null) {
      result
        ..add('precipIntensity')
        ..add(serializers.serialize(object.precipIntensity,
            specifiedType: const FullType(double)));
    }
    if (object.precipIntensityError != null) {
      result
        ..add('precipIntensityError')
        ..add(serializers.serialize(object.precipIntensityError,
            specifiedType: const FullType(double)));
    }
    if (object.precipProbability != null) {
      result
        ..add('precipProbability')
        ..add(serializers.serialize(object.precipProbability,
            specifiedType: const FullType(double)));
    }
    if (object.precipType != null) {
      result
        ..add('precipType')
        ..add(serializers.serialize(object.precipType,
            specifiedType: const FullType(String)));
    }
    if (object.temperature != null) {
      result
        ..add('temperature')
        ..add(serializers.serialize(object.temperature,
            specifiedType: const FullType(double)));
    }
    if (object.apparentTemperature != null) {
      result
        ..add('apparentTemperature')
        ..add(serializers.serialize(object.apparentTemperature,
            specifiedType: const FullType(double)));
    }
    if (object.dewPoint != null) {
      result
        ..add('dewPoint')
        ..add(serializers.serialize(object.dewPoint,
            specifiedType: const FullType(double)));
    }
    if (object.humidity != null) {
      result
        ..add('humidity')
        ..add(serializers.serialize(object.humidity,
            specifiedType: const FullType(double)));
    }
    if (object.pressure != null) {
      result
        ..add('pressure')
        ..add(serializers.serialize(object.pressure,
            specifiedType: const FullType(double)));
    }
    if (object.windSpeed != null) {
      result
        ..add('windSpeed')
        ..add(serializers.serialize(object.windSpeed,
            specifiedType: const FullType(double)));
    }
    if (object.windGust != null) {
      result
        ..add('windGust')
        ..add(serializers.serialize(object.windGust,
            specifiedType: const FullType(double)));
    }
    if (object.windBearing != null) {
      result
        ..add('windBearing')
        ..add(serializers.serialize(object.windBearing,
            specifiedType: const FullType(int)));
    }
    if (object.cloudCover != null) {
      result
        ..add('cloudCover')
        ..add(serializers.serialize(object.cloudCover,
            specifiedType: const FullType(double)));
    }
    if (object.uvIndex != null) {
      result
        ..add('uvIndex')
        ..add(serializers.serialize(object.uvIndex,
            specifiedType: const FullType(int)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(double)));
    }
    if (object.ozone != null) {
      result
        ..add('ozone')
        ..add(serializers.serialize(object.ozone,
            specifiedType: const FullType(double)));
    }

    return result;
  }

  @override
  Currently deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CurrentlyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nearestStormDistance':
          result.nearestStormDistance = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'nearestStormBearing':
          result.nearestStormBearing = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'precipIntensity':
          result.precipIntensity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precipIntensityError':
          result.precipIntensityError = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precipProbability':
          result.precipProbability = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precipType':
          result.precipType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'temperature':
          result.temperature = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'apparentTemperature':
          result.apparentTemperature = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dewPoint':
          result.dewPoint = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windSpeed':
          result.windSpeed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windGust':
          result.windGust = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windBearing':
          result.windBearing = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cloudCover':
          result.cloudCover = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'uvIndex':
          result.uvIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'ozone':
          result.ozone = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$MinutelySerializer implements StructuredSerializer<Minutely> {
  @override
  final Iterable<Type> types = const [Minutely, _$Minutely];
  @override
  final String wireName = 'Minutely';

  @override
  Iterable serialize(Serializers serializers, Minutely object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(MinuteData)])),
    ];
    if (object.summary != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(object.summary,
            specifiedType: const FullType(String)));
    }
    if (object.icon != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(object.icon,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Minutely deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MinutelyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(MinuteData)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$HourlySerializer implements StructuredSerializer<Hourly> {
  @override
  final Iterable<Type> types = const [Hourly, _$Hourly];
  @override
  final String wireName = 'Hourly';

  @override
  Iterable serialize(Serializers serializers, Hourly object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(HourData)])),
    ];
    if (object.summary != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(object.summary,
            specifiedType: const FullType(String)));
    }
    if (object.icon != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(object.icon,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Hourly deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HourlyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(HourData)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$DailySerializer implements StructuredSerializer<Daily> {
  @override
  final Iterable<Type> types = const [Daily, _$Daily];
  @override
  final String wireName = 'Daily';

  @override
  Iterable serialize(Serializers serializers, Daily object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'data',
      serializers.serialize(object.data,
          specifiedType:
              const FullType(BuiltList, const [const FullType(DailyData)])),
    ];
    if (object.summary != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(object.summary,
            specifiedType: const FullType(String)));
    }
    if (object.icon != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(object.icon,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Daily deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(DailyData)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$AlertsSerializer implements StructuredSerializer<Alerts> {
  @override
  final Iterable<Type> types = const [Alerts, _$Alerts];
  @override
  final String wireName = 'Alerts';

  @override
  Iterable serialize(Serializers serializers, Alerts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'regions',
      serializers.serialize(object.regions,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'severity',
      serializers.serialize(object.severity,
          specifiedType: const FullType(String)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(int)),
      'expires',
      serializers.serialize(object.expires, specifiedType: const FullType(int)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'uri',
      serializers.serialize(object.uri, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Alerts deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlertsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'regions':
          result.regions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'severity':
          result.severity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'expires':
          result.expires = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uri':
          result.uri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FlagsSerializer implements StructuredSerializer<Flags> {
  @override
  final Iterable<Type> types = const [Flags, _$Flags];
  @override
  final String wireName = 'Flags';

  @override
  Iterable serialize(Serializers serializers, Flags object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sources != null) {
      result
        ..add('sources')
        ..add(serializers.serialize(object.sources,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.nearestStation != null) {
      result
        ..add('nearest-station')
        ..add(serializers.serialize(object.nearestStation,
            specifiedType: const FullType(double)));
    }
    if (object.units != null) {
      result
        ..add('units')
        ..add(serializers.serialize(object.units,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  Flags deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FlagsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sources':
          result.sources.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList);
          break;
        case 'nearest-station':
          result.nearestStation = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'units':
          result.units = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MinuteDataSerializer implements StructuredSerializer<MinuteData> {
  @override
  final Iterable<Type> types = const [MinuteData, _$MinuteData];
  @override
  final String wireName = 'MinuteData';

  @override
  Iterable serialize(Serializers serializers, MinuteData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.time != null) {
      result
        ..add('time')
        ..add(serializers.serialize(object.time,
            specifiedType: const FullType(int)));
    }
    if (object.precipIntensity != null) {
      result
        ..add('precipIntensity')
        ..add(serializers.serialize(object.precipIntensity,
            specifiedType: const FullType(double)));
    }
    if (object.precipIntensityError != null) {
      result
        ..add('precipIntensityError')
        ..add(serializers.serialize(object.precipIntensityError,
            specifiedType: const FullType(double)));
    }
    if (object.precipProbability != null) {
      result
        ..add('precipProbability')
        ..add(serializers.serialize(object.precipProbability,
            specifiedType: const FullType(double)));
    }
    if (object.precipType != null) {
      result
        ..add('precipType')
        ..add(serializers.serialize(object.precipType,
            specifiedType: const FullType(String)));
    }

    return result;
  }

  @override
  MinuteData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MinuteDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'precipIntensity':
          result.precipIntensity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precipIntensityError':
          result.precipIntensityError = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precipProbability':
          result.precipProbability = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precipType':
          result.precipType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HourDataSerializer implements StructuredSerializer<HourData> {
  @override
  final Iterable<Type> types = const [HourData, _$HourData];
  @override
  final String wireName = 'HourData';

  @override
  Iterable serialize(Serializers serializers, HourData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(int)),
    ];
    if (object.summary != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(object.summary,
            specifiedType: const FullType(String)));
    }
    if (object.icon != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(object.icon,
            specifiedType: const FullType(String)));
    }
    if (object.precipIntensity != null) {
      result
        ..add('precipIntensity')
        ..add(serializers.serialize(object.precipIntensity,
            specifiedType: const FullType(double)));
    }
    if (object.precipProbability != null) {
      result
        ..add('precipProbability')
        ..add(serializers.serialize(object.precipProbability,
            specifiedType: const FullType(double)));
    }
    if (object.precipType != null) {
      result
        ..add('precipType')
        ..add(serializers.serialize(object.precipType,
            specifiedType: const FullType(String)));
    }
    if (object.precipAccumulation != null) {
      result
        ..add('precipAccumulation')
        ..add(serializers.serialize(object.precipAccumulation,
            specifiedType: const FullType(double)));
    }
    if (object.temperature != null) {
      result
        ..add('temperature')
        ..add(serializers.serialize(object.temperature,
            specifiedType: const FullType(double)));
    }
    if (object.apparentTemperature != null) {
      result
        ..add('apparentTemperature')
        ..add(serializers.serialize(object.apparentTemperature,
            specifiedType: const FullType(double)));
    }
    if (object.dewPoint != null) {
      result
        ..add('dewPoint')
        ..add(serializers.serialize(object.dewPoint,
            specifiedType: const FullType(double)));
    }
    if (object.humidity != null) {
      result
        ..add('humidity')
        ..add(serializers.serialize(object.humidity,
            specifiedType: const FullType(double)));
    }
    if (object.pressure != null) {
      result
        ..add('pressure')
        ..add(serializers.serialize(object.pressure,
            specifiedType: const FullType(double)));
    }
    if (object.windSpeed != null) {
      result
        ..add('windSpeed')
        ..add(serializers.serialize(object.windSpeed,
            specifiedType: const FullType(double)));
    }
    if (object.windGust != null) {
      result
        ..add('windGust')
        ..add(serializers.serialize(object.windGust,
            specifiedType: const FullType(double)));
    }
    if (object.windBearing != null) {
      result
        ..add('windBearing')
        ..add(serializers.serialize(object.windBearing,
            specifiedType: const FullType(int)));
    }
    if (object.cloudCover != null) {
      result
        ..add('cloudCover')
        ..add(serializers.serialize(object.cloudCover,
            specifiedType: const FullType(double)));
    }
    if (object.uvIndex != null) {
      result
        ..add('uvIndex')
        ..add(serializers.serialize(object.uvIndex,
            specifiedType: const FullType(int)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(double)));
    }
    if (object.ozone != null) {
      result
        ..add('ozone')
        ..add(serializers.serialize(object.ozone,
            specifiedType: const FullType(double)));
    }

    return result;
  }

  @override
  HourData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HourDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'precipIntensity':
          result.precipIntensity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precipProbability':
          result.precipProbability = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precipType':
          result.precipType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'precipAccumulation':
          result.precipAccumulation = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temperature':
          result.temperature = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'apparentTemperature':
          result.apparentTemperature = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'dewPoint':
          result.dewPoint = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windSpeed':
          result.windSpeed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windGust':
          result.windGust = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windBearing':
          result.windBearing = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cloudCover':
          result.cloudCover = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'uvIndex':
          result.uvIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'ozone':
          result.ozone = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$DailyDataSerializer implements StructuredSerializer<DailyData> {
  @override
  final Iterable<Type> types = const [DailyData, _$DailyData];
  @override
  final String wireName = 'DailyData';

  @override
  Iterable serialize(Serializers serializers, DailyData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(int)),
    ];
    if (object.summary != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(object.summary,
            specifiedType: const FullType(String)));
    }
    if (object.icon != null) {
      result
        ..add('icon')
        ..add(serializers.serialize(object.icon,
            specifiedType: const FullType(String)));
    }
    if (object.sunriseTime != null) {
      result
        ..add('sunriseTime')
        ..add(serializers.serialize(object.sunriseTime,
            specifiedType: const FullType(int)));
    }
    if (object.sunsetTime != null) {
      result
        ..add('sunsetTime')
        ..add(serializers.serialize(object.sunsetTime,
            specifiedType: const FullType(int)));
    }
    if (object.moonPhase != null) {
      result
        ..add('moonPhase')
        ..add(serializers.serialize(object.moonPhase,
            specifiedType: const FullType(double)));
    }
    if (object.precipIntensity != null) {
      result
        ..add('precipIntensity')
        ..add(serializers.serialize(object.precipIntensity,
            specifiedType: const FullType(double)));
    }
    if (object.precipIntensityMax != null) {
      result
        ..add('precipIntensityMax')
        ..add(serializers.serialize(object.precipIntensityMax,
            specifiedType: const FullType(double)));
    }
    if (object.precipIntensityMaxTime != null) {
      result
        ..add('precipIntensityMaxTime')
        ..add(serializers.serialize(object.precipIntensityMaxTime,
            specifiedType: const FullType(int)));
    }
    if (object.precipProbability != null) {
      result
        ..add('precipProbability')
        ..add(serializers.serialize(object.precipProbability,
            specifiedType: const FullType(double)));
    }
    if (object.precipType != null) {
      result
        ..add('precipType')
        ..add(serializers.serialize(object.precipType,
            specifiedType: const FullType(String)));
    }
    if (object.precipAccumulation != null) {
      result
        ..add('precipAccumulation')
        ..add(serializers.serialize(object.precipAccumulation,
            specifiedType: const FullType(double)));
    }
    if (object.temperatureHigh != null) {
      result
        ..add('temperatureHigh')
        ..add(serializers.serialize(object.temperatureHigh,
            specifiedType: const FullType(double)));
    }
    if (object.temperatureHighTime != null) {
      result
        ..add('temperatureHighTime')
        ..add(serializers.serialize(object.temperatureHighTime,
            specifiedType: const FullType(int)));
    }
    if (object.temperatureLow != null) {
      result
        ..add('temperatureLow')
        ..add(serializers.serialize(object.temperatureLow,
            specifiedType: const FullType(double)));
    }
    if (object.temperatureLowTime != null) {
      result
        ..add('temperatureLowTime')
        ..add(serializers.serialize(object.temperatureLowTime,
            specifiedType: const FullType(int)));
    }
    if (object.apparentTemperatureHigh != null) {
      result
        ..add('apparentTemperatureHigh')
        ..add(serializers.serialize(object.apparentTemperatureHigh,
            specifiedType: const FullType(double)));
    }
    if (object.apparentTemperatureHighTime != null) {
      result
        ..add('apparentTemperatureHighTime')
        ..add(serializers.serialize(object.apparentTemperatureHighTime,
            specifiedType: const FullType(int)));
    }
    if (object.apparentTemperatureLow != null) {
      result
        ..add('apparentTemperatureLow')
        ..add(serializers.serialize(object.apparentTemperatureLow,
            specifiedType: const FullType(double)));
    }
    if (object.apparentTemperatureLowTime != null) {
      result
        ..add('apparentTemperatureLowTime')
        ..add(serializers.serialize(object.apparentTemperatureLowTime,
            specifiedType: const FullType(int)));
    }
    if (object.dewPoint != null) {
      result
        ..add('dewPoint')
        ..add(serializers.serialize(object.dewPoint,
            specifiedType: const FullType(double)));
    }
    if (object.humidity != null) {
      result
        ..add('humidity')
        ..add(serializers.serialize(object.humidity,
            specifiedType: const FullType(double)));
    }
    if (object.pressure != null) {
      result
        ..add('pressure')
        ..add(serializers.serialize(object.pressure,
            specifiedType: const FullType(double)));
    }
    if (object.windSpeed != null) {
      result
        ..add('windSpeed')
        ..add(serializers.serialize(object.windSpeed,
            specifiedType: const FullType(double)));
    }
    if (object.windGust != null) {
      result
        ..add('windGust')
        ..add(serializers.serialize(object.windGust,
            specifiedType: const FullType(double)));
    }
    if (object.windGustTime != null) {
      result
        ..add('windGustTime')
        ..add(serializers.serialize(object.windGustTime,
            specifiedType: const FullType(int)));
    }
    if (object.windBearing != null) {
      result
        ..add('windBearing')
        ..add(serializers.serialize(object.windBearing,
            specifiedType: const FullType(int)));
    }
    if (object.cloudCover != null) {
      result
        ..add('cloudCover')
        ..add(serializers.serialize(object.cloudCover,
            specifiedType: const FullType(double)));
    }
    if (object.uvIndex != null) {
      result
        ..add('uvIndex')
        ..add(serializers.serialize(object.uvIndex,
            specifiedType: const FullType(int)));
    }
    if (object.uvIndexTime != null) {
      result
        ..add('uvIndexTime')
        ..add(serializers.serialize(object.uvIndexTime,
            specifiedType: const FullType(int)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(double)));
    }
    if (object.ozone != null) {
      result
        ..add('ozone')
        ..add(serializers.serialize(object.ozone,
            specifiedType: const FullType(double)));
    }
    if (object.temperatureMin != null) {
      result
        ..add('temperatureMin')
        ..add(serializers.serialize(object.temperatureMin,
            specifiedType: const FullType(double)));
    }
    if (object.temperatureMinTime != null) {
      result
        ..add('temperatureMinTime')
        ..add(serializers.serialize(object.temperatureMinTime,
            specifiedType: const FullType(int)));
    }
    if (object.temperatureMax != null) {
      result
        ..add('temperatureMax')
        ..add(serializers.serialize(object.temperatureMax,
            specifiedType: const FullType(double)));
    }
    if (object.temperatureMaxTime != null) {
      result
        ..add('temperatureMaxTime')
        ..add(serializers.serialize(object.temperatureMaxTime,
            specifiedType: const FullType(int)));
    }
    if (object.apparentTemperatureMin != null) {
      result
        ..add('apparentTemperatureMin')
        ..add(serializers.serialize(object.apparentTemperatureMin,
            specifiedType: const FullType(double)));
    }
    if (object.apparentTemperatureMinTime != null) {
      result
        ..add('apparentTemperatureMinTime')
        ..add(serializers.serialize(object.apparentTemperatureMinTime,
            specifiedType: const FullType(int)));
    }
    if (object.apparentTemperatureMax != null) {
      result
        ..add('apparentTemperatureMax')
        ..add(serializers.serialize(object.apparentTemperatureMax,
            specifiedType: const FullType(double)));
    }
    if (object.apparentTemperatureMaxTime != null) {
      result
        ..add('apparentTemperatureMaxTime')
        ..add(serializers.serialize(object.apparentTemperatureMaxTime,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  DailyData deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DailyDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sunriseTime':
          result.sunriseTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sunsetTime':
          result.sunsetTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'moonPhase':
          result.moonPhase = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precipIntensity':
          result.precipIntensity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precipIntensityMax':
          result.precipIntensityMax = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precipIntensityMaxTime':
          result.precipIntensityMaxTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'precipProbability':
          result.precipProbability = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'precipType':
          result.precipType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'precipAccumulation':
          result.precipAccumulation = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temperatureHigh':
          result.temperatureHigh = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temperatureHighTime':
          result.temperatureHighTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'temperatureLow':
          result.temperatureLow = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temperatureLowTime':
          result.temperatureLowTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'apparentTemperatureHigh':
          result.apparentTemperatureHigh = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'apparentTemperatureHighTime':
          result.apparentTemperatureHighTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'apparentTemperatureLow':
          result.apparentTemperatureLow = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'apparentTemperatureLowTime':
          result.apparentTemperatureLowTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'dewPoint':
          result.dewPoint = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'pressure':
          result.pressure = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windSpeed':
          result.windSpeed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windGust':
          result.windGust = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'windGustTime':
          result.windGustTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'windBearing':
          result.windBearing = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'cloudCover':
          result.cloudCover = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'uvIndex':
          result.uvIndex = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'uvIndexTime':
          result.uvIndexTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'ozone':
          result.ozone = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temperatureMin':
          result.temperatureMin = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temperatureMinTime':
          result.temperatureMinTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'temperatureMax':
          result.temperatureMax = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'temperatureMaxTime':
          result.temperatureMaxTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'apparentTemperatureMin':
          result.apparentTemperatureMin = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'apparentTemperatureMinTime':
          result.apparentTemperatureMinTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'apparentTemperatureMax':
          result.apparentTemperatureMax = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'apparentTemperatureMaxTime':
          result.apparentTemperatureMaxTime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$DarkSkyWeather extends DarkSkyWeather {
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String timezone;
  @override
  final Currently currently;
  @override
  final Minutely minutely;
  @override
  final Hourly hourly;
  @override
  final Daily daily;
  @override
  final BuiltList<Alerts> alerts;
  @override
  final Flags flags;
  @override
  final int offset;

  factory _$DarkSkyWeather([void updates(DarkSkyWeatherBuilder b)]) =>
      (new DarkSkyWeatherBuilder()..update(updates)).build();

  _$DarkSkyWeather._(
      {this.latitude,
      this.longitude,
      this.timezone,
      this.currently,
      this.minutely,
      this.hourly,
      this.daily,
      this.alerts,
      this.flags,
      this.offset})
      : super._() {
    if (latitude == null) {
      throw new BuiltValueNullFieldError('DarkSkyWeather', 'latitude');
    }
    if (longitude == null) {
      throw new BuiltValueNullFieldError('DarkSkyWeather', 'longitude');
    }
    if (timezone == null) {
      throw new BuiltValueNullFieldError('DarkSkyWeather', 'timezone');
    }
  }

  @override
  DarkSkyWeather rebuild(void updates(DarkSkyWeatherBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DarkSkyWeatherBuilder toBuilder() =>
      new DarkSkyWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DarkSkyWeather &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        timezone == other.timezone &&
        currently == other.currently &&
        minutely == other.minutely &&
        hourly == other.hourly &&
        daily == other.daily &&
        alerts == other.alerts &&
        flags == other.flags &&
        offset == other.offset;
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
                                    $jc($jc(0, latitude.hashCode),
                                        longitude.hashCode),
                                    timezone.hashCode),
                                currently.hashCode),
                            minutely.hashCode),
                        hourly.hashCode),
                    daily.hashCode),
                alerts.hashCode),
            flags.hashCode),
        offset.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DarkSkyWeather')
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('timezone', timezone)
          ..add('currently', currently)
          ..add('minutely', minutely)
          ..add('hourly', hourly)
          ..add('daily', daily)
          ..add('alerts', alerts)
          ..add('flags', flags)
          ..add('offset', offset))
        .toString();
  }
}

class DarkSkyWeatherBuilder
    implements Builder<DarkSkyWeather, DarkSkyWeatherBuilder> {
  _$DarkSkyWeather _$v;

  double _latitude;
  double get latitude => _$this._latitude;
  set latitude(double latitude) => _$this._latitude = latitude;

  double _longitude;
  double get longitude => _$this._longitude;
  set longitude(double longitude) => _$this._longitude = longitude;

  String _timezone;
  String get timezone => _$this._timezone;
  set timezone(String timezone) => _$this._timezone = timezone;

  CurrentlyBuilder _currently;
  CurrentlyBuilder get currently =>
      _$this._currently ??= new CurrentlyBuilder();
  set currently(CurrentlyBuilder currently) => _$this._currently = currently;

  MinutelyBuilder _minutely;
  MinutelyBuilder get minutely => _$this._minutely ??= new MinutelyBuilder();
  set minutely(MinutelyBuilder minutely) => _$this._minutely = minutely;

  HourlyBuilder _hourly;
  HourlyBuilder get hourly => _$this._hourly ??= new HourlyBuilder();
  set hourly(HourlyBuilder hourly) => _$this._hourly = hourly;

  DailyBuilder _daily;
  DailyBuilder get daily => _$this._daily ??= new DailyBuilder();
  set daily(DailyBuilder daily) => _$this._daily = daily;

  ListBuilder<Alerts> _alerts;
  ListBuilder<Alerts> get alerts =>
      _$this._alerts ??= new ListBuilder<Alerts>();
  set alerts(ListBuilder<Alerts> alerts) => _$this._alerts = alerts;

  FlagsBuilder _flags;
  FlagsBuilder get flags => _$this._flags ??= new FlagsBuilder();
  set flags(FlagsBuilder flags) => _$this._flags = flags;

  int _offset;
  int get offset => _$this._offset;
  set offset(int offset) => _$this._offset = offset;

  DarkSkyWeatherBuilder();

  DarkSkyWeatherBuilder get _$this {
    if (_$v != null) {
      _latitude = _$v.latitude;
      _longitude = _$v.longitude;
      _timezone = _$v.timezone;
      _currently = _$v.currently?.toBuilder();
      _minutely = _$v.minutely?.toBuilder();
      _hourly = _$v.hourly?.toBuilder();
      _daily = _$v.daily?.toBuilder();
      _alerts = _$v.alerts?.toBuilder();
      _flags = _$v.flags?.toBuilder();
      _offset = _$v.offset;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DarkSkyWeather other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DarkSkyWeather;
  }

  @override
  void update(void updates(DarkSkyWeatherBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DarkSkyWeather build() {
    _$DarkSkyWeather _$result;
    try {
      _$result = _$v ??
          new _$DarkSkyWeather._(
              latitude: latitude,
              longitude: longitude,
              timezone: timezone,
              currently: _currently?.build(),
              minutely: _minutely?.build(),
              hourly: _hourly?.build(),
              daily: _daily?.build(),
              alerts: _alerts?.build(),
              flags: _flags?.build(),
              offset: offset);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'currently';
        _currently?.build();
        _$failedField = 'minutely';
        _minutely?.build();
        _$failedField = 'hourly';
        _hourly?.build();
        _$failedField = 'daily';
        _daily?.build();
        _$failedField = 'alerts';
        _alerts?.build();
        _$failedField = 'flags';
        _flags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DarkSkyWeather', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Currently extends Currently {
  @override
  final int time;
  @override
  final String summary;
  @override
  final String icon;
  @override
  final double nearestStormDistance;
  @override
  final int nearestStormBearing;
  @override
  final double precipIntensity;
  @override
  final double precipIntensityError;
  @override
  final double precipProbability;
  @override
  final String precipType;
  @override
  final double temperature;
  @override
  final double apparentTemperature;
  @override
  final double dewPoint;
  @override
  final double humidity;
  @override
  final double pressure;
  @override
  final double windSpeed;
  @override
  final double windGust;
  @override
  final int windBearing;
  @override
  final double cloudCover;
  @override
  final int uvIndex;
  @override
  final double visibility;
  @override
  final double ozone;

  factory _$Currently([void updates(CurrentlyBuilder b)]) =>
      (new CurrentlyBuilder()..update(updates)).build();

  _$Currently._(
      {this.time,
      this.summary,
      this.icon,
      this.nearestStormDistance,
      this.nearestStormBearing,
      this.precipIntensity,
      this.precipIntensityError,
      this.precipProbability,
      this.precipType,
      this.temperature,
      this.apparentTemperature,
      this.dewPoint,
      this.humidity,
      this.pressure,
      this.windSpeed,
      this.windGust,
      this.windBearing,
      this.cloudCover,
      this.uvIndex,
      this.visibility,
      this.ozone})
      : super._() {
    if (time == null) {
      throw new BuiltValueNullFieldError('Currently', 'time');
    }
  }

  @override
  Currently rebuild(void updates(CurrentlyBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CurrentlyBuilder toBuilder() => new CurrentlyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Currently &&
        time == other.time &&
        summary == other.summary &&
        icon == other.icon &&
        nearestStormDistance == other.nearestStormDistance &&
        nearestStormBearing == other.nearestStormBearing &&
        precipIntensity == other.precipIntensity &&
        precipIntensityError == other.precipIntensityError &&
        precipProbability == other.precipProbability &&
        precipType == other.precipType &&
        temperature == other.temperature &&
        apparentTemperature == other.apparentTemperature &&
        dewPoint == other.dewPoint &&
        humidity == other.humidity &&
        pressure == other.pressure &&
        windSpeed == other.windSpeed &&
        windGust == other.windGust &&
        windBearing == other.windBearing &&
        cloudCover == other.cloudCover &&
        uvIndex == other.uvIndex &&
        visibility == other.visibility &&
        ozone == other.ozone;
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
                                                                            $jc($jc($jc(0, time.hashCode), summary.hashCode),
                                                                                icon.hashCode),
                                                                            nearestStormDistance.hashCode),
                                                                        nearestStormBearing.hashCode),
                                                                    precipIntensity.hashCode),
                                                                precipIntensityError.hashCode),
                                                            precipProbability.hashCode),
                                                        precipType.hashCode),
                                                    temperature.hashCode),
                                                apparentTemperature.hashCode),
                                            dewPoint.hashCode),
                                        humidity.hashCode),
                                    pressure.hashCode),
                                windSpeed.hashCode),
                            windGust.hashCode),
                        windBearing.hashCode),
                    cloudCover.hashCode),
                uvIndex.hashCode),
            visibility.hashCode),
        ozone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Currently')
          ..add('time', time)
          ..add('summary', summary)
          ..add('icon', icon)
          ..add('nearestStormDistance', nearestStormDistance)
          ..add('nearestStormBearing', nearestStormBearing)
          ..add('precipIntensity', precipIntensity)
          ..add('precipIntensityError', precipIntensityError)
          ..add('precipProbability', precipProbability)
          ..add('precipType', precipType)
          ..add('temperature', temperature)
          ..add('apparentTemperature', apparentTemperature)
          ..add('dewPoint', dewPoint)
          ..add('humidity', humidity)
          ..add('pressure', pressure)
          ..add('windSpeed', windSpeed)
          ..add('windGust', windGust)
          ..add('windBearing', windBearing)
          ..add('cloudCover', cloudCover)
          ..add('uvIndex', uvIndex)
          ..add('visibility', visibility)
          ..add('ozone', ozone))
        .toString();
  }
}

class CurrentlyBuilder implements Builder<Currently, CurrentlyBuilder> {
  _$Currently _$v;

  int _time;
  int get time => _$this._time;
  set time(int time) => _$this._time = time;

  String _summary;
  String get summary => _$this._summary;
  set summary(String summary) => _$this._summary = summary;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  double _nearestStormDistance;
  double get nearestStormDistance => _$this._nearestStormDistance;
  set nearestStormDistance(double nearestStormDistance) =>
      _$this._nearestStormDistance = nearestStormDistance;

  int _nearestStormBearing;
  int get nearestStormBearing => _$this._nearestStormBearing;
  set nearestStormBearing(int nearestStormBearing) =>
      _$this._nearestStormBearing = nearestStormBearing;

  double _precipIntensity;
  double get precipIntensity => _$this._precipIntensity;
  set precipIntensity(double precipIntensity) =>
      _$this._precipIntensity = precipIntensity;

  double _precipIntensityError;
  double get precipIntensityError => _$this._precipIntensityError;
  set precipIntensityError(double precipIntensityError) =>
      _$this._precipIntensityError = precipIntensityError;

  double _precipProbability;
  double get precipProbability => _$this._precipProbability;
  set precipProbability(double precipProbability) =>
      _$this._precipProbability = precipProbability;

  String _precipType;
  String get precipType => _$this._precipType;
  set precipType(String precipType) => _$this._precipType = precipType;

  double _temperature;
  double get temperature => _$this._temperature;
  set temperature(double temperature) => _$this._temperature = temperature;

  double _apparentTemperature;
  double get apparentTemperature => _$this._apparentTemperature;
  set apparentTemperature(double apparentTemperature) =>
      _$this._apparentTemperature = apparentTemperature;

  double _dewPoint;
  double get dewPoint => _$this._dewPoint;
  set dewPoint(double dewPoint) => _$this._dewPoint = dewPoint;

  double _humidity;
  double get humidity => _$this._humidity;
  set humidity(double humidity) => _$this._humidity = humidity;

  double _pressure;
  double get pressure => _$this._pressure;
  set pressure(double pressure) => _$this._pressure = pressure;

  double _windSpeed;
  double get windSpeed => _$this._windSpeed;
  set windSpeed(double windSpeed) => _$this._windSpeed = windSpeed;

  double _windGust;
  double get windGust => _$this._windGust;
  set windGust(double windGust) => _$this._windGust = windGust;

  int _windBearing;
  int get windBearing => _$this._windBearing;
  set windBearing(int windBearing) => _$this._windBearing = windBearing;

  double _cloudCover;
  double get cloudCover => _$this._cloudCover;
  set cloudCover(double cloudCover) => _$this._cloudCover = cloudCover;

  int _uvIndex;
  int get uvIndex => _$this._uvIndex;
  set uvIndex(int uvIndex) => _$this._uvIndex = uvIndex;

  double _visibility;
  double get visibility => _$this._visibility;
  set visibility(double visibility) => _$this._visibility = visibility;

  double _ozone;
  double get ozone => _$this._ozone;
  set ozone(double ozone) => _$this._ozone = ozone;

  CurrentlyBuilder();

  CurrentlyBuilder get _$this {
    if (_$v != null) {
      _time = _$v.time;
      _summary = _$v.summary;
      _icon = _$v.icon;
      _nearestStormDistance = _$v.nearestStormDistance;
      _nearestStormBearing = _$v.nearestStormBearing;
      _precipIntensity = _$v.precipIntensity;
      _precipIntensityError = _$v.precipIntensityError;
      _precipProbability = _$v.precipProbability;
      _precipType = _$v.precipType;
      _temperature = _$v.temperature;
      _apparentTemperature = _$v.apparentTemperature;
      _dewPoint = _$v.dewPoint;
      _humidity = _$v.humidity;
      _pressure = _$v.pressure;
      _windSpeed = _$v.windSpeed;
      _windGust = _$v.windGust;
      _windBearing = _$v.windBearing;
      _cloudCover = _$v.cloudCover;
      _uvIndex = _$v.uvIndex;
      _visibility = _$v.visibility;
      _ozone = _$v.ozone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Currently other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Currently;
  }

  @override
  void update(void updates(CurrentlyBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Currently build() {
    final _$result = _$v ??
        new _$Currently._(
            time: time,
            summary: summary,
            icon: icon,
            nearestStormDistance: nearestStormDistance,
            nearestStormBearing: nearestStormBearing,
            precipIntensity: precipIntensity,
            precipIntensityError: precipIntensityError,
            precipProbability: precipProbability,
            precipType: precipType,
            temperature: temperature,
            apparentTemperature: apparentTemperature,
            dewPoint: dewPoint,
            humidity: humidity,
            pressure: pressure,
            windSpeed: windSpeed,
            windGust: windGust,
            windBearing: windBearing,
            cloudCover: cloudCover,
            uvIndex: uvIndex,
            visibility: visibility,
            ozone: ozone);
    replace(_$result);
    return _$result;
  }
}

class _$Minutely extends Minutely {
  @override
  final String summary;
  @override
  final String icon;
  @override
  final BuiltList<MinuteData> data;

  factory _$Minutely([void updates(MinutelyBuilder b)]) =>
      (new MinutelyBuilder()..update(updates)).build();

  _$Minutely._({this.summary, this.icon, this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('Minutely', 'data');
    }
  }

  @override
  Minutely rebuild(void updates(MinutelyBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MinutelyBuilder toBuilder() => new MinutelyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Minutely &&
        summary == other.summary &&
        icon == other.icon &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, summary.hashCode), icon.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Minutely')
          ..add('summary', summary)
          ..add('icon', icon)
          ..add('data', data))
        .toString();
  }
}

class MinutelyBuilder implements Builder<Minutely, MinutelyBuilder> {
  _$Minutely _$v;

  String _summary;
  String get summary => _$this._summary;
  set summary(String summary) => _$this._summary = summary;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  ListBuilder<MinuteData> _data;
  ListBuilder<MinuteData> get data =>
      _$this._data ??= new ListBuilder<MinuteData>();
  set data(ListBuilder<MinuteData> data) => _$this._data = data;

  MinutelyBuilder();

  MinutelyBuilder get _$this {
    if (_$v != null) {
      _summary = _$v.summary;
      _icon = _$v.icon;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Minutely other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Minutely;
  }

  @override
  void update(void updates(MinutelyBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Minutely build() {
    _$Minutely _$result;
    try {
      _$result = _$v ??
          new _$Minutely._(summary: summary, icon: icon, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Minutely', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Hourly extends Hourly {
  @override
  final String summary;
  @override
  final String icon;
  @override
  final BuiltList<HourData> data;

  factory _$Hourly([void updates(HourlyBuilder b)]) =>
      (new HourlyBuilder()..update(updates)).build();

  _$Hourly._({this.summary, this.icon, this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('Hourly', 'data');
    }
  }

  @override
  Hourly rebuild(void updates(HourlyBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HourlyBuilder toBuilder() => new HourlyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Hourly &&
        summary == other.summary &&
        icon == other.icon &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, summary.hashCode), icon.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Hourly')
          ..add('summary', summary)
          ..add('icon', icon)
          ..add('data', data))
        .toString();
  }
}

class HourlyBuilder implements Builder<Hourly, HourlyBuilder> {
  _$Hourly _$v;

  String _summary;
  String get summary => _$this._summary;
  set summary(String summary) => _$this._summary = summary;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  ListBuilder<HourData> _data;
  ListBuilder<HourData> get data =>
      _$this._data ??= new ListBuilder<HourData>();
  set data(ListBuilder<HourData> data) => _$this._data = data;

  HourlyBuilder();

  HourlyBuilder get _$this {
    if (_$v != null) {
      _summary = _$v.summary;
      _icon = _$v.icon;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Hourly other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Hourly;
  }

  @override
  void update(void updates(HourlyBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Hourly build() {
    _$Hourly _$result;
    try {
      _$result = _$v ??
          new _$Hourly._(summary: summary, icon: icon, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Hourly', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Daily extends Daily {
  @override
  final String summary;
  @override
  final String icon;
  @override
  final BuiltList<DailyData> data;

  factory _$Daily([void updates(DailyBuilder b)]) =>
      (new DailyBuilder()..update(updates)).build();

  _$Daily._({this.summary, this.icon, this.data}) : super._() {
    if (data == null) {
      throw new BuiltValueNullFieldError('Daily', 'data');
    }
  }

  @override
  Daily rebuild(void updates(DailyBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyBuilder toBuilder() => new DailyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Daily &&
        summary == other.summary &&
        icon == other.icon &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, summary.hashCode), icon.hashCode), data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Daily')
          ..add('summary', summary)
          ..add('icon', icon)
          ..add('data', data))
        .toString();
  }
}

class DailyBuilder implements Builder<Daily, DailyBuilder> {
  _$Daily _$v;

  String _summary;
  String get summary => _$this._summary;
  set summary(String summary) => _$this._summary = summary;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  ListBuilder<DailyData> _data;
  ListBuilder<DailyData> get data =>
      _$this._data ??= new ListBuilder<DailyData>();
  set data(ListBuilder<DailyData> data) => _$this._data = data;

  DailyBuilder();

  DailyBuilder get _$this {
    if (_$v != null) {
      _summary = _$v.summary;
      _icon = _$v.icon;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Daily other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Daily;
  }

  @override
  void update(void updates(DailyBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Daily build() {
    _$Daily _$result;
    try {
      _$result = _$v ??
          new _$Daily._(summary: summary, icon: icon, data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Daily', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Alerts extends Alerts {
  @override
  final String title;
  @override
  final BuiltList<String> regions;
  @override
  final String severity;
  @override
  final int time;
  @override
  final int expires;
  @override
  final String description;
  @override
  final String uri;

  factory _$Alerts([void updates(AlertsBuilder b)]) =>
      (new AlertsBuilder()..update(updates)).build();

  _$Alerts._(
      {this.title,
      this.regions,
      this.severity,
      this.time,
      this.expires,
      this.description,
      this.uri})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('Alerts', 'title');
    }
    if (regions == null) {
      throw new BuiltValueNullFieldError('Alerts', 'regions');
    }
    if (severity == null) {
      throw new BuiltValueNullFieldError('Alerts', 'severity');
    }
    if (time == null) {
      throw new BuiltValueNullFieldError('Alerts', 'time');
    }
    if (expires == null) {
      throw new BuiltValueNullFieldError('Alerts', 'expires');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Alerts', 'description');
    }
    if (uri == null) {
      throw new BuiltValueNullFieldError('Alerts', 'uri');
    }
  }

  @override
  Alerts rebuild(void updates(AlertsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AlertsBuilder toBuilder() => new AlertsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Alerts &&
        title == other.title &&
        regions == other.regions &&
        severity == other.severity &&
        time == other.time &&
        expires == other.expires &&
        description == other.description &&
        uri == other.uri;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, title.hashCode), regions.hashCode),
                        severity.hashCode),
                    time.hashCode),
                expires.hashCode),
            description.hashCode),
        uri.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Alerts')
          ..add('title', title)
          ..add('regions', regions)
          ..add('severity', severity)
          ..add('time', time)
          ..add('expires', expires)
          ..add('description', description)
          ..add('uri', uri))
        .toString();
  }
}

class AlertsBuilder implements Builder<Alerts, AlertsBuilder> {
  _$Alerts _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  ListBuilder<String> _regions;
  ListBuilder<String> get regions =>
      _$this._regions ??= new ListBuilder<String>();
  set regions(ListBuilder<String> regions) => _$this._regions = regions;

  String _severity;
  String get severity => _$this._severity;
  set severity(String severity) => _$this._severity = severity;

  int _time;
  int get time => _$this._time;
  set time(int time) => _$this._time = time;

  int _expires;
  int get expires => _$this._expires;
  set expires(int expires) => _$this._expires = expires;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _uri;
  String get uri => _$this._uri;
  set uri(String uri) => _$this._uri = uri;

  AlertsBuilder();

  AlertsBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _regions = _$v.regions?.toBuilder();
      _severity = _$v.severity;
      _time = _$v.time;
      _expires = _$v.expires;
      _description = _$v.description;
      _uri = _$v.uri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Alerts other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Alerts;
  }

  @override
  void update(void updates(AlertsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Alerts build() {
    _$Alerts _$result;
    try {
      _$result = _$v ??
          new _$Alerts._(
              title: title,
              regions: regions.build(),
              severity: severity,
              time: time,
              expires: expires,
              description: description,
              uri: uri);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'regions';
        regions.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Alerts', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Flags extends Flags {
  @override
  final BuiltList<String> sources;
  @override
  final double nearestStation;
  @override
  final String units;

  factory _$Flags([void updates(FlagsBuilder b)]) =>
      (new FlagsBuilder()..update(updates)).build();

  _$Flags._({this.sources, this.nearestStation, this.units}) : super._();

  @override
  Flags rebuild(void updates(FlagsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  FlagsBuilder toBuilder() => new FlagsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Flags &&
        sources == other.sources &&
        nearestStation == other.nearestStation &&
        units == other.units;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, sources.hashCode), nearestStation.hashCode),
        units.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Flags')
          ..add('sources', sources)
          ..add('nearestStation', nearestStation)
          ..add('units', units))
        .toString();
  }
}

class FlagsBuilder implements Builder<Flags, FlagsBuilder> {
  _$Flags _$v;

  ListBuilder<String> _sources;
  ListBuilder<String> get sources =>
      _$this._sources ??= new ListBuilder<String>();
  set sources(ListBuilder<String> sources) => _$this._sources = sources;

  double _nearestStation;
  double get nearestStation => _$this._nearestStation;
  set nearestStation(double nearestStation) =>
      _$this._nearestStation = nearestStation;

  String _units;
  String get units => _$this._units;
  set units(String units) => _$this._units = units;

  FlagsBuilder();

  FlagsBuilder get _$this {
    if (_$v != null) {
      _sources = _$v.sources?.toBuilder();
      _nearestStation = _$v.nearestStation;
      _units = _$v.units;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Flags other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Flags;
  }

  @override
  void update(void updates(FlagsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Flags build() {
    _$Flags _$result;
    try {
      _$result = _$v ??
          new _$Flags._(
              sources: _sources?.build(),
              nearestStation: nearestStation,
              units: units);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sources';
        _sources?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Flags', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MinuteData extends MinuteData {
  @override
  final int time;
  @override
  final double precipIntensity;
  @override
  final double precipIntensityError;
  @override
  final double precipProbability;
  @override
  final String precipType;

  factory _$MinuteData([void updates(MinuteDataBuilder b)]) =>
      (new MinuteDataBuilder()..update(updates)).build();

  _$MinuteData._(
      {this.time,
      this.precipIntensity,
      this.precipIntensityError,
      this.precipProbability,
      this.precipType})
      : super._();

  @override
  MinuteData rebuild(void updates(MinuteDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MinuteDataBuilder toBuilder() => new MinuteDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MinuteData &&
        time == other.time &&
        precipIntensity == other.precipIntensity &&
        precipIntensityError == other.precipIntensityError &&
        precipProbability == other.precipProbability &&
        precipType == other.precipType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, time.hashCode), precipIntensity.hashCode),
                precipIntensityError.hashCode),
            precipProbability.hashCode),
        precipType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MinuteData')
          ..add('time', time)
          ..add('precipIntensity', precipIntensity)
          ..add('precipIntensityError', precipIntensityError)
          ..add('precipProbability', precipProbability)
          ..add('precipType', precipType))
        .toString();
  }
}

class MinuteDataBuilder implements Builder<MinuteData, MinuteDataBuilder> {
  _$MinuteData _$v;

  int _time;
  int get time => _$this._time;
  set time(int time) => _$this._time = time;

  double _precipIntensity;
  double get precipIntensity => _$this._precipIntensity;
  set precipIntensity(double precipIntensity) =>
      _$this._precipIntensity = precipIntensity;

  double _precipIntensityError;
  double get precipIntensityError => _$this._precipIntensityError;
  set precipIntensityError(double precipIntensityError) =>
      _$this._precipIntensityError = precipIntensityError;

  double _precipProbability;
  double get precipProbability => _$this._precipProbability;
  set precipProbability(double precipProbability) =>
      _$this._precipProbability = precipProbability;

  String _precipType;
  String get precipType => _$this._precipType;
  set precipType(String precipType) => _$this._precipType = precipType;

  MinuteDataBuilder();

  MinuteDataBuilder get _$this {
    if (_$v != null) {
      _time = _$v.time;
      _precipIntensity = _$v.precipIntensity;
      _precipIntensityError = _$v.precipIntensityError;
      _precipProbability = _$v.precipProbability;
      _precipType = _$v.precipType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MinuteData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MinuteData;
  }

  @override
  void update(void updates(MinuteDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MinuteData build() {
    final _$result = _$v ??
        new _$MinuteData._(
            time: time,
            precipIntensity: precipIntensity,
            precipIntensityError: precipIntensityError,
            precipProbability: precipProbability,
            precipType: precipType);
    replace(_$result);
    return _$result;
  }
}

class _$HourData extends HourData {
  @override
  final int time;
  @override
  final String summary;
  @override
  final String icon;
  @override
  final double precipIntensity;
  @override
  final double precipProbability;
  @override
  final String precipType;
  @override
  final double precipAccumulation;
  @override
  final double temperature;
  @override
  final double apparentTemperature;
  @override
  final double dewPoint;
  @override
  final double humidity;
  @override
  final double pressure;
  @override
  final double windSpeed;
  @override
  final double windGust;
  @override
  final int windBearing;
  @override
  final double cloudCover;
  @override
  final int uvIndex;
  @override
  final double visibility;
  @override
  final double ozone;

  factory _$HourData([void updates(HourDataBuilder b)]) =>
      (new HourDataBuilder()..update(updates)).build();

  _$HourData._(
      {this.time,
      this.summary,
      this.icon,
      this.precipIntensity,
      this.precipProbability,
      this.precipType,
      this.precipAccumulation,
      this.temperature,
      this.apparentTemperature,
      this.dewPoint,
      this.humidity,
      this.pressure,
      this.windSpeed,
      this.windGust,
      this.windBearing,
      this.cloudCover,
      this.uvIndex,
      this.visibility,
      this.ozone})
      : super._() {
    if (time == null) {
      throw new BuiltValueNullFieldError('HourData', 'time');
    }
  }

  @override
  HourData rebuild(void updates(HourDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HourDataBuilder toBuilder() => new HourDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HourData &&
        time == other.time &&
        summary == other.summary &&
        icon == other.icon &&
        precipIntensity == other.precipIntensity &&
        precipProbability == other.precipProbability &&
        precipType == other.precipType &&
        precipAccumulation == other.precipAccumulation &&
        temperature == other.temperature &&
        apparentTemperature == other.apparentTemperature &&
        dewPoint == other.dewPoint &&
        humidity == other.humidity &&
        pressure == other.pressure &&
        windSpeed == other.windSpeed &&
        windGust == other.windGust &&
        windBearing == other.windBearing &&
        cloudCover == other.cloudCover &&
        uvIndex == other.uvIndex &&
        visibility == other.visibility &&
        ozone == other.ozone;
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
                                                                            $jc(
                                                                                0,
                                                                                time
                                                                                    .hashCode),
                                                                            summary
                                                                                .hashCode),
                                                                        icon
                                                                            .hashCode),
                                                                    precipIntensity
                                                                        .hashCode),
                                                                precipProbability
                                                                    .hashCode),
                                                            precipType
                                                                .hashCode),
                                                        precipAccumulation
                                                            .hashCode),
                                                    temperature.hashCode),
                                                apparentTemperature.hashCode),
                                            dewPoint.hashCode),
                                        humidity.hashCode),
                                    pressure.hashCode),
                                windSpeed.hashCode),
                            windGust.hashCode),
                        windBearing.hashCode),
                    cloudCover.hashCode),
                uvIndex.hashCode),
            visibility.hashCode),
        ozone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HourData')
          ..add('time', time)
          ..add('summary', summary)
          ..add('icon', icon)
          ..add('precipIntensity', precipIntensity)
          ..add('precipProbability', precipProbability)
          ..add('precipType', precipType)
          ..add('precipAccumulation', precipAccumulation)
          ..add('temperature', temperature)
          ..add('apparentTemperature', apparentTemperature)
          ..add('dewPoint', dewPoint)
          ..add('humidity', humidity)
          ..add('pressure', pressure)
          ..add('windSpeed', windSpeed)
          ..add('windGust', windGust)
          ..add('windBearing', windBearing)
          ..add('cloudCover', cloudCover)
          ..add('uvIndex', uvIndex)
          ..add('visibility', visibility)
          ..add('ozone', ozone))
        .toString();
  }
}

class HourDataBuilder implements Builder<HourData, HourDataBuilder> {
  _$HourData _$v;

  int _time;
  int get time => _$this._time;
  set time(int time) => _$this._time = time;

  String _summary;
  String get summary => _$this._summary;
  set summary(String summary) => _$this._summary = summary;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  double _precipIntensity;
  double get precipIntensity => _$this._precipIntensity;
  set precipIntensity(double precipIntensity) =>
      _$this._precipIntensity = precipIntensity;

  double _precipProbability;
  double get precipProbability => _$this._precipProbability;
  set precipProbability(double precipProbability) =>
      _$this._precipProbability = precipProbability;

  String _precipType;
  String get precipType => _$this._precipType;
  set precipType(String precipType) => _$this._precipType = precipType;

  double _precipAccumulation;
  double get precipAccumulation => _$this._precipAccumulation;
  set precipAccumulation(double precipAccumulation) =>
      _$this._precipAccumulation = precipAccumulation;

  double _temperature;
  double get temperature => _$this._temperature;
  set temperature(double temperature) => _$this._temperature = temperature;

  double _apparentTemperature;
  double get apparentTemperature => _$this._apparentTemperature;
  set apparentTemperature(double apparentTemperature) =>
      _$this._apparentTemperature = apparentTemperature;

  double _dewPoint;
  double get dewPoint => _$this._dewPoint;
  set dewPoint(double dewPoint) => _$this._dewPoint = dewPoint;

  double _humidity;
  double get humidity => _$this._humidity;
  set humidity(double humidity) => _$this._humidity = humidity;

  double _pressure;
  double get pressure => _$this._pressure;
  set pressure(double pressure) => _$this._pressure = pressure;

  double _windSpeed;
  double get windSpeed => _$this._windSpeed;
  set windSpeed(double windSpeed) => _$this._windSpeed = windSpeed;

  double _windGust;
  double get windGust => _$this._windGust;
  set windGust(double windGust) => _$this._windGust = windGust;

  int _windBearing;
  int get windBearing => _$this._windBearing;
  set windBearing(int windBearing) => _$this._windBearing = windBearing;

  double _cloudCover;
  double get cloudCover => _$this._cloudCover;
  set cloudCover(double cloudCover) => _$this._cloudCover = cloudCover;

  int _uvIndex;
  int get uvIndex => _$this._uvIndex;
  set uvIndex(int uvIndex) => _$this._uvIndex = uvIndex;

  double _visibility;
  double get visibility => _$this._visibility;
  set visibility(double visibility) => _$this._visibility = visibility;

  double _ozone;
  double get ozone => _$this._ozone;
  set ozone(double ozone) => _$this._ozone = ozone;

  HourDataBuilder();

  HourDataBuilder get _$this {
    if (_$v != null) {
      _time = _$v.time;
      _summary = _$v.summary;
      _icon = _$v.icon;
      _precipIntensity = _$v.precipIntensity;
      _precipProbability = _$v.precipProbability;
      _precipType = _$v.precipType;
      _precipAccumulation = _$v.precipAccumulation;
      _temperature = _$v.temperature;
      _apparentTemperature = _$v.apparentTemperature;
      _dewPoint = _$v.dewPoint;
      _humidity = _$v.humidity;
      _pressure = _$v.pressure;
      _windSpeed = _$v.windSpeed;
      _windGust = _$v.windGust;
      _windBearing = _$v.windBearing;
      _cloudCover = _$v.cloudCover;
      _uvIndex = _$v.uvIndex;
      _visibility = _$v.visibility;
      _ozone = _$v.ozone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HourData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HourData;
  }

  @override
  void update(void updates(HourDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$HourData build() {
    final _$result = _$v ??
        new _$HourData._(
            time: time,
            summary: summary,
            icon: icon,
            precipIntensity: precipIntensity,
            precipProbability: precipProbability,
            precipType: precipType,
            precipAccumulation: precipAccumulation,
            temperature: temperature,
            apparentTemperature: apparentTemperature,
            dewPoint: dewPoint,
            humidity: humidity,
            pressure: pressure,
            windSpeed: windSpeed,
            windGust: windGust,
            windBearing: windBearing,
            cloudCover: cloudCover,
            uvIndex: uvIndex,
            visibility: visibility,
            ozone: ozone);
    replace(_$result);
    return _$result;
  }
}

class _$DailyData extends DailyData {
  @override
  final int time;
  @override
  final String summary;
  @override
  final String icon;
  @override
  final int sunriseTime;
  @override
  final int sunsetTime;
  @override
  final double moonPhase;
  @override
  final double precipIntensity;
  @override
  final double precipIntensityMax;
  @override
  final int precipIntensityMaxTime;
  @override
  final double precipProbability;
  @override
  final String precipType;
  @override
  final double precipAccumulation;
  @override
  final double temperatureHigh;
  @override
  final int temperatureHighTime;
  @override
  final double temperatureLow;
  @override
  final int temperatureLowTime;
  @override
  final double apparentTemperatureHigh;
  @override
  final int apparentTemperatureHighTime;
  @override
  final double apparentTemperatureLow;
  @override
  final int apparentTemperatureLowTime;
  @override
  final double dewPoint;
  @override
  final double humidity;
  @override
  final double pressure;
  @override
  final double windSpeed;
  @override
  final double windGust;
  @override
  final int windGustTime;
  @override
  final int windBearing;
  @override
  final double cloudCover;
  @override
  final int uvIndex;
  @override
  final int uvIndexTime;
  @override
  final double visibility;
  @override
  final double ozone;
  @override
  final double temperatureMin;
  @override
  final int temperatureMinTime;
  @override
  final double temperatureMax;
  @override
  final int temperatureMaxTime;
  @override
  final double apparentTemperatureMin;
  @override
  final int apparentTemperatureMinTime;
  @override
  final double apparentTemperatureMax;
  @override
  final int apparentTemperatureMaxTime;

  factory _$DailyData([void updates(DailyDataBuilder b)]) =>
      (new DailyDataBuilder()..update(updates)).build();

  _$DailyData._(
      {this.time,
      this.summary,
      this.icon,
      this.sunriseTime,
      this.sunsetTime,
      this.moonPhase,
      this.precipIntensity,
      this.precipIntensityMax,
      this.precipIntensityMaxTime,
      this.precipProbability,
      this.precipType,
      this.precipAccumulation,
      this.temperatureHigh,
      this.temperatureHighTime,
      this.temperatureLow,
      this.temperatureLowTime,
      this.apparentTemperatureHigh,
      this.apparentTemperatureHighTime,
      this.apparentTemperatureLow,
      this.apparentTemperatureLowTime,
      this.dewPoint,
      this.humidity,
      this.pressure,
      this.windSpeed,
      this.windGust,
      this.windGustTime,
      this.windBearing,
      this.cloudCover,
      this.uvIndex,
      this.uvIndexTime,
      this.visibility,
      this.ozone,
      this.temperatureMin,
      this.temperatureMinTime,
      this.temperatureMax,
      this.temperatureMaxTime,
      this.apparentTemperatureMin,
      this.apparentTemperatureMinTime,
      this.apparentTemperatureMax,
      this.apparentTemperatureMaxTime})
      : super._() {
    if (time == null) {
      throw new BuiltValueNullFieldError('DailyData', 'time');
    }
  }

  @override
  DailyData rebuild(void updates(DailyDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  DailyDataBuilder toBuilder() => new DailyDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DailyData &&
        time == other.time &&
        summary == other.summary &&
        icon == other.icon &&
        sunriseTime == other.sunriseTime &&
        sunsetTime == other.sunsetTime &&
        moonPhase == other.moonPhase &&
        precipIntensity == other.precipIntensity &&
        precipIntensityMax == other.precipIntensityMax &&
        precipIntensityMaxTime == other.precipIntensityMaxTime &&
        precipProbability == other.precipProbability &&
        precipType == other.precipType &&
        precipAccumulation == other.precipAccumulation &&
        temperatureHigh == other.temperatureHigh &&
        temperatureHighTime == other.temperatureHighTime &&
        temperatureLow == other.temperatureLow &&
        temperatureLowTime == other.temperatureLowTime &&
        apparentTemperatureHigh == other.apparentTemperatureHigh &&
        apparentTemperatureHighTime == other.apparentTemperatureHighTime &&
        apparentTemperatureLow == other.apparentTemperatureLow &&
        apparentTemperatureLowTime == other.apparentTemperatureLowTime &&
        dewPoint == other.dewPoint &&
        humidity == other.humidity &&
        pressure == other.pressure &&
        windSpeed == other.windSpeed &&
        windGust == other.windGust &&
        windGustTime == other.windGustTime &&
        windBearing == other.windBearing &&
        cloudCover == other.cloudCover &&
        uvIndex == other.uvIndex &&
        uvIndexTime == other.uvIndexTime &&
        visibility == other.visibility &&
        ozone == other.ozone &&
        temperatureMin == other.temperatureMin &&
        temperatureMinTime == other.temperatureMinTime &&
        temperatureMax == other.temperatureMax &&
        temperatureMaxTime == other.temperatureMaxTime &&
        apparentTemperatureMin == other.apparentTemperatureMin &&
        apparentTemperatureMinTime == other.apparentTemperatureMinTime &&
        apparentTemperatureMax == other.apparentTemperatureMax &&
        apparentTemperatureMaxTime == other.apparentTemperatureMaxTime;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, time.hashCode), summary.hashCode), icon.hashCode), sunriseTime.hashCode), sunsetTime.hashCode), moonPhase.hashCode), precipIntensity.hashCode), precipIntensityMax.hashCode), precipIntensityMaxTime.hashCode), precipProbability.hashCode), precipType.hashCode), precipAccumulation.hashCode), temperatureHigh.hashCode), temperatureHighTime.hashCode), temperatureLow.hashCode), temperatureLowTime.hashCode), apparentTemperatureHigh.hashCode), apparentTemperatureHighTime.hashCode), apparentTemperatureLow.hashCode), apparentTemperatureLowTime.hashCode), dewPoint.hashCode),
                                                                                humidity.hashCode),
                                                                            pressure.hashCode),
                                                                        windSpeed.hashCode),
                                                                    windGust.hashCode),
                                                                windGustTime.hashCode),
                                                            windBearing.hashCode),
                                                        cloudCover.hashCode),
                                                    uvIndex.hashCode),
                                                uvIndexTime.hashCode),
                                            visibility.hashCode),
                                        ozone.hashCode),
                                    temperatureMin.hashCode),
                                temperatureMinTime.hashCode),
                            temperatureMax.hashCode),
                        temperatureMaxTime.hashCode),
                    apparentTemperatureMin.hashCode),
                apparentTemperatureMinTime.hashCode),
            apparentTemperatureMax.hashCode),
        apparentTemperatureMaxTime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DailyData')
          ..add('time', time)
          ..add('summary', summary)
          ..add('icon', icon)
          ..add('sunriseTime', sunriseTime)
          ..add('sunsetTime', sunsetTime)
          ..add('moonPhase', moonPhase)
          ..add('precipIntensity', precipIntensity)
          ..add('precipIntensityMax', precipIntensityMax)
          ..add('precipIntensityMaxTime', precipIntensityMaxTime)
          ..add('precipProbability', precipProbability)
          ..add('precipType', precipType)
          ..add('precipAccumulation', precipAccumulation)
          ..add('temperatureHigh', temperatureHigh)
          ..add('temperatureHighTime', temperatureHighTime)
          ..add('temperatureLow', temperatureLow)
          ..add('temperatureLowTime', temperatureLowTime)
          ..add('apparentTemperatureHigh', apparentTemperatureHigh)
          ..add('apparentTemperatureHighTime', apparentTemperatureHighTime)
          ..add('apparentTemperatureLow', apparentTemperatureLow)
          ..add('apparentTemperatureLowTime', apparentTemperatureLowTime)
          ..add('dewPoint', dewPoint)
          ..add('humidity', humidity)
          ..add('pressure', pressure)
          ..add('windSpeed', windSpeed)
          ..add('windGust', windGust)
          ..add('windGustTime', windGustTime)
          ..add('windBearing', windBearing)
          ..add('cloudCover', cloudCover)
          ..add('uvIndex', uvIndex)
          ..add('uvIndexTime', uvIndexTime)
          ..add('visibility', visibility)
          ..add('ozone', ozone)
          ..add('temperatureMin', temperatureMin)
          ..add('temperatureMinTime', temperatureMinTime)
          ..add('temperatureMax', temperatureMax)
          ..add('temperatureMaxTime', temperatureMaxTime)
          ..add('apparentTemperatureMin', apparentTemperatureMin)
          ..add('apparentTemperatureMinTime', apparentTemperatureMinTime)
          ..add('apparentTemperatureMax', apparentTemperatureMax)
          ..add('apparentTemperatureMaxTime', apparentTemperatureMaxTime))
        .toString();
  }
}

class DailyDataBuilder implements Builder<DailyData, DailyDataBuilder> {
  _$DailyData _$v;

  int _time;
  int get time => _$this._time;
  set time(int time) => _$this._time = time;

  String _summary;
  String get summary => _$this._summary;
  set summary(String summary) => _$this._summary = summary;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  int _sunriseTime;
  int get sunriseTime => _$this._sunriseTime;
  set sunriseTime(int sunriseTime) => _$this._sunriseTime = sunriseTime;

  int _sunsetTime;
  int get sunsetTime => _$this._sunsetTime;
  set sunsetTime(int sunsetTime) => _$this._sunsetTime = sunsetTime;

  double _moonPhase;
  double get moonPhase => _$this._moonPhase;
  set moonPhase(double moonPhase) => _$this._moonPhase = moonPhase;

  double _precipIntensity;
  double get precipIntensity => _$this._precipIntensity;
  set precipIntensity(double precipIntensity) =>
      _$this._precipIntensity = precipIntensity;

  double _precipIntensityMax;
  double get precipIntensityMax => _$this._precipIntensityMax;
  set precipIntensityMax(double precipIntensityMax) =>
      _$this._precipIntensityMax = precipIntensityMax;

  int _precipIntensityMaxTime;
  int get precipIntensityMaxTime => _$this._precipIntensityMaxTime;
  set precipIntensityMaxTime(int precipIntensityMaxTime) =>
      _$this._precipIntensityMaxTime = precipIntensityMaxTime;

  double _precipProbability;
  double get precipProbability => _$this._precipProbability;
  set precipProbability(double precipProbability) =>
      _$this._precipProbability = precipProbability;

  String _precipType;
  String get precipType => _$this._precipType;
  set precipType(String precipType) => _$this._precipType = precipType;

  double _precipAccumulation;
  double get precipAccumulation => _$this._precipAccumulation;
  set precipAccumulation(double precipAccumulation) =>
      _$this._precipAccumulation = precipAccumulation;

  double _temperatureHigh;
  double get temperatureHigh => _$this._temperatureHigh;
  set temperatureHigh(double temperatureHigh) =>
      _$this._temperatureHigh = temperatureHigh;

  int _temperatureHighTime;
  int get temperatureHighTime => _$this._temperatureHighTime;
  set temperatureHighTime(int temperatureHighTime) =>
      _$this._temperatureHighTime = temperatureHighTime;

  double _temperatureLow;
  double get temperatureLow => _$this._temperatureLow;
  set temperatureLow(double temperatureLow) =>
      _$this._temperatureLow = temperatureLow;

  int _temperatureLowTime;
  int get temperatureLowTime => _$this._temperatureLowTime;
  set temperatureLowTime(int temperatureLowTime) =>
      _$this._temperatureLowTime = temperatureLowTime;

  double _apparentTemperatureHigh;
  double get apparentTemperatureHigh => _$this._apparentTemperatureHigh;
  set apparentTemperatureHigh(double apparentTemperatureHigh) =>
      _$this._apparentTemperatureHigh = apparentTemperatureHigh;

  int _apparentTemperatureHighTime;
  int get apparentTemperatureHighTime => _$this._apparentTemperatureHighTime;
  set apparentTemperatureHighTime(int apparentTemperatureHighTime) =>
      _$this._apparentTemperatureHighTime = apparentTemperatureHighTime;

  double _apparentTemperatureLow;
  double get apparentTemperatureLow => _$this._apparentTemperatureLow;
  set apparentTemperatureLow(double apparentTemperatureLow) =>
      _$this._apparentTemperatureLow = apparentTemperatureLow;

  int _apparentTemperatureLowTime;
  int get apparentTemperatureLowTime => _$this._apparentTemperatureLowTime;
  set apparentTemperatureLowTime(int apparentTemperatureLowTime) =>
      _$this._apparentTemperatureLowTime = apparentTemperatureLowTime;

  double _dewPoint;
  double get dewPoint => _$this._dewPoint;
  set dewPoint(double dewPoint) => _$this._dewPoint = dewPoint;

  double _humidity;
  double get humidity => _$this._humidity;
  set humidity(double humidity) => _$this._humidity = humidity;

  double _pressure;
  double get pressure => _$this._pressure;
  set pressure(double pressure) => _$this._pressure = pressure;

  double _windSpeed;
  double get windSpeed => _$this._windSpeed;
  set windSpeed(double windSpeed) => _$this._windSpeed = windSpeed;

  double _windGust;
  double get windGust => _$this._windGust;
  set windGust(double windGust) => _$this._windGust = windGust;

  int _windGustTime;
  int get windGustTime => _$this._windGustTime;
  set windGustTime(int windGustTime) => _$this._windGustTime = windGustTime;

  int _windBearing;
  int get windBearing => _$this._windBearing;
  set windBearing(int windBearing) => _$this._windBearing = windBearing;

  double _cloudCover;
  double get cloudCover => _$this._cloudCover;
  set cloudCover(double cloudCover) => _$this._cloudCover = cloudCover;

  int _uvIndex;
  int get uvIndex => _$this._uvIndex;
  set uvIndex(int uvIndex) => _$this._uvIndex = uvIndex;

  int _uvIndexTime;
  int get uvIndexTime => _$this._uvIndexTime;
  set uvIndexTime(int uvIndexTime) => _$this._uvIndexTime = uvIndexTime;

  double _visibility;
  double get visibility => _$this._visibility;
  set visibility(double visibility) => _$this._visibility = visibility;

  double _ozone;
  double get ozone => _$this._ozone;
  set ozone(double ozone) => _$this._ozone = ozone;

  double _temperatureMin;
  double get temperatureMin => _$this._temperatureMin;
  set temperatureMin(double temperatureMin) =>
      _$this._temperatureMin = temperatureMin;

  int _temperatureMinTime;
  int get temperatureMinTime => _$this._temperatureMinTime;
  set temperatureMinTime(int temperatureMinTime) =>
      _$this._temperatureMinTime = temperatureMinTime;

  double _temperatureMax;
  double get temperatureMax => _$this._temperatureMax;
  set temperatureMax(double temperatureMax) =>
      _$this._temperatureMax = temperatureMax;

  int _temperatureMaxTime;
  int get temperatureMaxTime => _$this._temperatureMaxTime;
  set temperatureMaxTime(int temperatureMaxTime) =>
      _$this._temperatureMaxTime = temperatureMaxTime;

  double _apparentTemperatureMin;
  double get apparentTemperatureMin => _$this._apparentTemperatureMin;
  set apparentTemperatureMin(double apparentTemperatureMin) =>
      _$this._apparentTemperatureMin = apparentTemperatureMin;

  int _apparentTemperatureMinTime;
  int get apparentTemperatureMinTime => _$this._apparentTemperatureMinTime;
  set apparentTemperatureMinTime(int apparentTemperatureMinTime) =>
      _$this._apparentTemperatureMinTime = apparentTemperatureMinTime;

  double _apparentTemperatureMax;
  double get apparentTemperatureMax => _$this._apparentTemperatureMax;
  set apparentTemperatureMax(double apparentTemperatureMax) =>
      _$this._apparentTemperatureMax = apparentTemperatureMax;

  int _apparentTemperatureMaxTime;
  int get apparentTemperatureMaxTime => _$this._apparentTemperatureMaxTime;
  set apparentTemperatureMaxTime(int apparentTemperatureMaxTime) =>
      _$this._apparentTemperatureMaxTime = apparentTemperatureMaxTime;

  DailyDataBuilder();

  DailyDataBuilder get _$this {
    if (_$v != null) {
      _time = _$v.time;
      _summary = _$v.summary;
      _icon = _$v.icon;
      _sunriseTime = _$v.sunriseTime;
      _sunsetTime = _$v.sunsetTime;
      _moonPhase = _$v.moonPhase;
      _precipIntensity = _$v.precipIntensity;
      _precipIntensityMax = _$v.precipIntensityMax;
      _precipIntensityMaxTime = _$v.precipIntensityMaxTime;
      _precipProbability = _$v.precipProbability;
      _precipType = _$v.precipType;
      _precipAccumulation = _$v.precipAccumulation;
      _temperatureHigh = _$v.temperatureHigh;
      _temperatureHighTime = _$v.temperatureHighTime;
      _temperatureLow = _$v.temperatureLow;
      _temperatureLowTime = _$v.temperatureLowTime;
      _apparentTemperatureHigh = _$v.apparentTemperatureHigh;
      _apparentTemperatureHighTime = _$v.apparentTemperatureHighTime;
      _apparentTemperatureLow = _$v.apparentTemperatureLow;
      _apparentTemperatureLowTime = _$v.apparentTemperatureLowTime;
      _dewPoint = _$v.dewPoint;
      _humidity = _$v.humidity;
      _pressure = _$v.pressure;
      _windSpeed = _$v.windSpeed;
      _windGust = _$v.windGust;
      _windGustTime = _$v.windGustTime;
      _windBearing = _$v.windBearing;
      _cloudCover = _$v.cloudCover;
      _uvIndex = _$v.uvIndex;
      _uvIndexTime = _$v.uvIndexTime;
      _visibility = _$v.visibility;
      _ozone = _$v.ozone;
      _temperatureMin = _$v.temperatureMin;
      _temperatureMinTime = _$v.temperatureMinTime;
      _temperatureMax = _$v.temperatureMax;
      _temperatureMaxTime = _$v.temperatureMaxTime;
      _apparentTemperatureMin = _$v.apparentTemperatureMin;
      _apparentTemperatureMinTime = _$v.apparentTemperatureMinTime;
      _apparentTemperatureMax = _$v.apparentTemperatureMax;
      _apparentTemperatureMaxTime = _$v.apparentTemperatureMaxTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DailyData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DailyData;
  }

  @override
  void update(void updates(DailyDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$DailyData build() {
    final _$result = _$v ??
        new _$DailyData._(
            time: time,
            summary: summary,
            icon: icon,
            sunriseTime: sunriseTime,
            sunsetTime: sunsetTime,
            moonPhase: moonPhase,
            precipIntensity: precipIntensity,
            precipIntensityMax: precipIntensityMax,
            precipIntensityMaxTime: precipIntensityMaxTime,
            precipProbability: precipProbability,
            precipType: precipType,
            precipAccumulation: precipAccumulation,
            temperatureHigh: temperatureHigh,
            temperatureHighTime: temperatureHighTime,
            temperatureLow: temperatureLow,
            temperatureLowTime: temperatureLowTime,
            apparentTemperatureHigh: apparentTemperatureHigh,
            apparentTemperatureHighTime: apparentTemperatureHighTime,
            apparentTemperatureLow: apparentTemperatureLow,
            apparentTemperatureLowTime: apparentTemperatureLowTime,
            dewPoint: dewPoint,
            humidity: humidity,
            pressure: pressure,
            windSpeed: windSpeed,
            windGust: windGust,
            windGustTime: windGustTime,
            windBearing: windBearing,
            cloudCover: cloudCover,
            uvIndex: uvIndex,
            uvIndexTime: uvIndexTime,
            visibility: visibility,
            ozone: ozone,
            temperatureMin: temperatureMin,
            temperatureMinTime: temperatureMinTime,
            temperatureMax: temperatureMax,
            temperatureMaxTime: temperatureMaxTime,
            apparentTemperatureMin: apparentTemperatureMin,
            apparentTemperatureMinTime: apparentTemperatureMinTime,
            apparentTemperatureMax: apparentTemperatureMax,
            apparentTemperatureMaxTime: apparentTemperatureMaxTime);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
