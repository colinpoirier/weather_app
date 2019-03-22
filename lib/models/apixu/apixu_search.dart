library apixu_search;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:weather_app/models/apixu/serializers.dart';

part 'apixu_search.g.dart';

abstract class ApixuSearch implements Built<ApixuSearch, ApixuSearchBuilder> {
  ApixuSearch._();

  factory ApixuSearch([updates(ApixuSearchBuilder b)]) = _$ApixuSearch;

  @BuiltValueField(wireName: 'id')
  int get id;
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
  @BuiltValueField(wireName: 'url')
  String get url;
  String toJson() {
    return json.encode(serializers.serializeWith(ApixuSearch.serializer, this));
  }

  static ApixuSearch fromJson(String jsonString) {
    return serializers.deserializeWith(
        ApixuSearch.serializer, json.decode(jsonString));
  }

  static Serializer<ApixuSearch> get serializer => _$apixuSearchSerializer;
}

abstract class ApixuSearchResults implements Built<ApixuSearchResults, ApixuSearchResultsBuilder> {
  BuiltList<ApixuSearch> get apixuSearchResults;

  ApixuSearchResults._();

  factory ApixuSearchResults([updates(ApixuSearchResultsBuilder b)]) = _$ApixuSearchResults;

  String toJson() {
    return json.encode(serializers.serializeWith(ApixuSearchResults.serializer, this));
  }

  static ApixuSearchResults setEmpty(){
    return ApixuSearchResults((b)=>b
      ..apixuSearchResults = ListBuilder<ApixuSearch>([]));
  }

  static ApixuSearchResults fromJson(String jsonString) {

    //return serializers.deserializeWith(ApixuSearchResults.serializer, json.decode(jsonString));
    return ApixuSearchResults((b)=>b
     ..apixuSearchResults = ListBuilder<ApixuSearch>(
       json.decode(jsonString).map<ApixuSearch>(
         (dynamic map) => serializers.deserializeWith<ApixuSearch>(ApixuSearch.serializer, map)).toList()));
  }

  static Serializer<ApixuSearchResults> get serializer => _$apixuSearchResultsSerializer;
}
