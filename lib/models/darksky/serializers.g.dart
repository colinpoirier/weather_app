// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(Alerts.serializer)
      ..add(Currently.serializer)
      ..add(Daily.serializer)
      ..add(DailyData.serializer)
      ..add(DarkSkyWeather.serializer)
      ..add(Flags.serializer)
      ..add(HourData.serializer)
      ..add(Hourly.serializer)
      ..add(MinuteData.serializer)
      ..add(Minutely.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Alerts)]),
          () => new ListBuilder<Alerts>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(DailyData)]),
          () => new ListBuilder<DailyData>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(HourData)]),
          () => new ListBuilder<HourData>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(MinuteData)]),
          () => new ListBuilder<MinuteData>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
