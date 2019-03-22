// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(ApixuSearch.serializer)
      ..add(ApixuSearchResults.serializer)
      ..add(ApixuWeather.serializer)
      ..add(Astro.serializer)
      ..add(Condition.serializer)
      ..add(Current.serializer)
      ..add(Day.serializer)
      ..add(Forecast.serializer)
      ..add(Forecastday.serializer)
      ..add(Hour.serializer)
      ..add(Location.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(ApixuSearch)]),
          () => new ListBuilder<ApixuSearch>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Forecastday)]),
          () => new ListBuilder<Forecastday>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Hour)]),
          () => new ListBuilder<Hour>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
