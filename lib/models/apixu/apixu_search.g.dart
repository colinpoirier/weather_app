// GENERATED CODE - DO NOT MODIFY BY HAND

part of apixu_search;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApixuSearch> _$apixuSearchSerializer = new _$ApixuSearchSerializer();
Serializer<ApixuSearchResults> _$apixuSearchResultsSerializer =
    new _$ApixuSearchResultsSerializer();

class _$ApixuSearchSerializer implements StructuredSerializer<ApixuSearch> {
  @override
  final Iterable<Type> types = const [ApixuSearch, _$ApixuSearch];
  @override
  final String wireName = 'ApixuSearch';

  @override
  Iterable serialize(Serializers serializers, ApixuSearch object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
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
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ApixuSearch deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApixuSearchBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ApixuSearchResultsSerializer
    implements StructuredSerializer<ApixuSearchResults> {
  @override
  final Iterable<Type> types = const [ApixuSearchResults, _$ApixuSearchResults];
  @override
  final String wireName = 'ApixuSearchResults';

  @override
  Iterable serialize(Serializers serializers, ApixuSearchResults object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'apixuSearchResults',
      serializers.serialize(object.apixuSearchResults,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ApixuSearch)])),
    ];

    return result;
  }

  @override
  ApixuSearchResults deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApixuSearchResultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'apixuSearchResults':
          result.apixuSearchResults.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ApixuSearch)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ApixuSearch extends ApixuSearch {
  @override
  final int id;
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
  final String url;

  factory _$ApixuSearch([void updates(ApixuSearchBuilder b)]) =>
      (new ApixuSearchBuilder()..update(updates)).build();

  _$ApixuSearch._(
      {this.id,
      this.name,
      this.region,
      this.country,
      this.lat,
      this.lon,
      this.url})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ApixuSearch', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('ApixuSearch', 'name');
    }
    if (region == null) {
      throw new BuiltValueNullFieldError('ApixuSearch', 'region');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('ApixuSearch', 'country');
    }
    if (lat == null) {
      throw new BuiltValueNullFieldError('ApixuSearch', 'lat');
    }
    if (lon == null) {
      throw new BuiltValueNullFieldError('ApixuSearch', 'lon');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('ApixuSearch', 'url');
    }
  }

  @override
  ApixuSearch rebuild(void updates(ApixuSearchBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ApixuSearchBuilder toBuilder() => new ApixuSearchBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApixuSearch &&
        id == other.id &&
        name == other.name &&
        region == other.region &&
        country == other.country &&
        lat == other.lat &&
        lon == other.lon &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        region.hashCode),
                    country.hashCode),
                lat.hashCode),
            lon.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApixuSearch')
          ..add('id', id)
          ..add('name', name)
          ..add('region', region)
          ..add('country', country)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('url', url))
        .toString();
  }
}

class ApixuSearchBuilder implements Builder<ApixuSearch, ApixuSearchBuilder> {
  _$ApixuSearch _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

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

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ApixuSearchBuilder();

  ApixuSearchBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _region = _$v.region;
      _country = _$v.country;
      _lat = _$v.lat;
      _lon = _$v.lon;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApixuSearch other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ApixuSearch;
  }

  @override
  void update(void updates(ApixuSearchBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ApixuSearch build() {
    final _$result = _$v ??
        new _$ApixuSearch._(
            id: id,
            name: name,
            region: region,
            country: country,
            lat: lat,
            lon: lon,
            url: url);
    replace(_$result);
    return _$result;
  }
}

class _$ApixuSearchResults extends ApixuSearchResults {
  @override
  final BuiltList<ApixuSearch> apixuSearchResults;

  factory _$ApixuSearchResults([void updates(ApixuSearchResultsBuilder b)]) =>
      (new ApixuSearchResultsBuilder()..update(updates)).build();

  _$ApixuSearchResults._({this.apixuSearchResults}) : super._() {
    if (apixuSearchResults == null) {
      throw new BuiltValueNullFieldError(
          'ApixuSearchResults', 'apixuSearchResults');
    }
  }

  @override
  ApixuSearchResults rebuild(void updates(ApixuSearchResultsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ApixuSearchResultsBuilder toBuilder() =>
      new ApixuSearchResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApixuSearchResults &&
        apixuSearchResults == other.apixuSearchResults;
  }

  @override
  int get hashCode {
    return $jf($jc(0, apixuSearchResults.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApixuSearchResults')
          ..add('apixuSearchResults', apixuSearchResults))
        .toString();
  }
}

class ApixuSearchResultsBuilder
    implements Builder<ApixuSearchResults, ApixuSearchResultsBuilder> {
  _$ApixuSearchResults _$v;

  ListBuilder<ApixuSearch> _apixuSearchResults;
  ListBuilder<ApixuSearch> get apixuSearchResults =>
      _$this._apixuSearchResults ??= new ListBuilder<ApixuSearch>();
  set apixuSearchResults(ListBuilder<ApixuSearch> apixuSearchResults) =>
      _$this._apixuSearchResults = apixuSearchResults;

  ApixuSearchResultsBuilder();

  ApixuSearchResultsBuilder get _$this {
    if (_$v != null) {
      _apixuSearchResults = _$v.apixuSearchResults?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApixuSearchResults other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ApixuSearchResults;
  }

  @override
  void update(void updates(ApixuSearchResultsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ApixuSearchResults build() {
    _$ApixuSearchResults _$result;
    try {
      _$result = _$v ??
          new _$ApixuSearchResults._(
              apixuSearchResults: apixuSearchResults.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'apixuSearchResults';
        apixuSearchResults.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ApixuSearchResults', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
