import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/forecast/settings_saver.dart';
import 'package:weather_app/generic_widgets/weather_bloc.dart';

class SettingsBloc{
  static SettingsSaver _settingsSaver;// = SettingsSaver();
  final _settingsOut = BehaviorSubject<SettingsSaver>();
  //final _settingsIn = BehaviorSubject<SettingsSaver>();
  final _eventIn = StreamController<SettingsEvent>();
  final _selectedIn = BehaviorSubject<int>(seedValue: 0);
  final _selectedOut = BehaviorSubject<int>();
  final _coordsOut = BehaviorSubject<List<double>>();
  final _locStringOut = BehaviorSubject<String>();
  final _lsdOut = BehaviorSubject<LocationSearchData>();
  final _tempUnitOut = BehaviorSubject<String>();
  final Sink<WeatherEvent> _weatherEventIn;
  bool _gpsAdded = false;
  int _selected = 0;
  //int _currentListLength = 0;

  Stream<SettingsSaver> get settingsOut => _settingsOut.asBroadcastStream();

  //Sink<SettingsSaver> get settingsIn => _settingsIn.sink;
  BehaviorSubject<List<double>> get coordsOut => _coordsOut.stream;

  BehaviorSubject<int> get selectedOut => _selectedOut.stream;

  BehaviorSubject<String> get locStringOut => _locStringOut.stream;

  BehaviorSubject<LocationSearchData> get lsdOut => _lsdOut.stream;

  BehaviorSubject<String> get tempUnitOut => _tempUnitOut.stream;

  Sink<int> get selectedIn => _selectedIn.sink;

  Sink<SettingsEvent> get eventIn => _eventIn.sink;


  SettingsBloc(this._weatherEventIn){
    _loadSettings();
    //_settingsIn.stream.listen((settings)=>_handleSettings(settings));
    //_selectedIn.sink.add(_selected);
    _selectedIn.stream.listen((selected)=>_handleSelected(selected));
    _eventIn.stream.listen((event)=>_handleEvent(event));
  }

  void _loadSettings() async{
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String settingsString = preferences.getString('settings') ?? '{useNick: false, useGPS: false, units: F, nicks: [Home], locs: [Turtlepoint], combined: [Turtlepoint], locationList: [LocationListItem], lsd: [{name: Turtlepoint, id: 2642164, lat: 41.87, long: -78.34}]}';
    _settingsSaver = SettingsSaver.fromStringMap(settingsString);
    //_settingsSaver =SettingsSaver.fromJson(_settingsSaver.fromStringToMap(settingsString));
    print(_settingsSaver.lsd.first.lat);
    _settingsOut.add(_settingsSaver);
    _handleCoords(_selected);
    _weatherEventIn.add(SetTemperatureUnit(tempUnit: _settingsSaver.units));
    _tempUnitOut.add(_settingsSaver.units);
    _weatherEventIn.add(GetWeather(locationSearchData: _settingsSaver.lsd[0]));
    _locStringOut.add(_settingsSaver.lsd[0].name);
    _lsdOut.add(_settingsSaver.lsd[0]);
  }

  void _saveSettings(SettingsSaver settings) async{
    //SharedPreferences preferences = await SharedPreferences.getInstance();
    String settingsString = settings.toString();
    //preferences.setString('settings', settingsString);
    print(settingsString);
  }

  void _handleEvent(SettingsEvent event){
    if(event is SettingsAdd){
      _adder();
    } else if (event is SettingsDelete){
      _deleteMe(event.index);
    } else if (event is SettingsLSD){
      _lsd(event.locationSearchData);
    } else if (event is LocString){
      _addLoc(event.index);
    } else if (event is NickString){
      _addNick(event.index);
    } else if (event is GPSChange){
      _changeGPS(event.boolean);
    } else if (event is NickChange){
      _changeNick(event.boolean);
    } else if (event is UnitsChange){
      _handleUnits(event.string);
    } else if (event is HandleSettings){
      _handleSettings();
    }
  }

  void _handleSelected(int selected){
    _selected = selected;
    _selectedOut.add(_selected);
    _handleCoords(selected);
    _locStringOut.add(_settingsSaver?.lsd?.elementAt(selected)?.name ?? '');
    _lsdOut.add(_settingsSaver?.lsd?.elementAt(selected) ?? LocationSearchData());
  }

  void _handleCoords(int selected){
    double lat = _settingsSaver?.lsd?.elementAt(selected)?.lat ?? 0.0;
    double long = _settingsSaver?.lsd?.elementAt(selected)?.long ?? 0.0;
    _coordsOut.add([lat, long]);
  }

  void _handleSettings() {
    for(int i = 0; i < 10; i++){
      if(_settingsSaver.locs.contains('')){
        int c = _settingsSaver.locs.indexOf('');
        if(c > 0){
          _settingsSaver.locs.removeAt(c);
          _settingsSaver.nicks.removeAt(c);
          _settingsSaver.combined.removeAt(c);
          _settingsSaver.locationList.removeAt(c);
          _settingsSaver.lsd.removeAt(c);
        }
      }
    }
    _settingsOut.add(_settingsSaver);
    _saveSettings(_settingsSaver);
  }

  void _adder() {
    _settingsSaver.add('');
    _settingsSaver.nicks.add('');
    _settingsSaver.locs.add('');
    _settingsSaver.combined.add('');
    _settingsSaver.lsd.add(LocationSearchData());
    _settingsOut.add(_settingsSaver);
  }

  void _deleteMe(int index) {
    _selectedOut.add(_selected >= index ? _selected - 1 : _selected);
    _settingsSaver.removeAt(index);
    _settingsSaver.nicks.removeAt(index);
    _settingsSaver.locs.removeAt(index);
    _settingsSaver.combined.removeAt(index);
    _settingsSaver.lsd.removeAt(index);
    _settingsOut.add(_settingsSaver);
  }

  void _lsd(LocationSearchData locationSearchData){
    int c = _settingsSaver.locs.indexOf(locationSearchData.name);
    c += _gpsAdded ? 1 : 0;
    _settingsSaver.lsd[c] = locationSearchData;
    _settingsOut.add(_settingsSaver);
    _weatherEventIn.add(GetWeather(locationSearchData: locationSearchData));
  }

  void _addLoc(int index){
    if (index < _settingsSaver.locationList.length) {
      _settingsSaver.locs[index] = _settingsSaver.locationList[index].locController.text;
      _updateCombined();
      _settingsOut.add(_settingsSaver);
    }
  }

  void _addNick(int index){
    if (index < _settingsSaver.locationList.length) {
      _settingsSaver.nicks[index] = _settingsSaver.locationList[index].nickController.text;
      _updateCombined();
      _settingsOut.add(_settingsSaver);
    }
  }

  void _changeGPS(bool boolean){
    _settingsSaver.useGPS = boolean;
    if (_settingsSaver.useGPS && !_gpsAdded) {
      _selectedOut.add(0);
      // _settingsSaver.combined.insert(0, 'GPS');
      // _settingsSaver.locationList.insert(0, LocationListItem());
      // _settingsSaver.nicks.insert(0, '');
      // _settingsSaver.locs.insert(0, '');
      _settingsSaver.combined.insert(0, 'GPS');
      _settingsSaver.lsd.insert(0, _getGPSCoords());
      _gpsAdded = true;
    }
    if (!_settingsSaver.useGPS && _gpsAdded) {
      _selectedOut.add(_selected < _settingsSaver.combined.length - 1 ? _selected : _selected - 1);
      //_settingsSaver.combined.removeAt(0);
      // _settingsSaver.add('');
      // _settingsSaver.nicks.add('');
      // _settingsSaver.locs.add('');
      _settingsSaver.combined.removeAt(0);
      _settingsSaver.lsd.removeAt(0);
      _gpsAdded = false;
    }
    _settingsOut.add(_settingsSaver);
  }

  void _changeNick(bool boolean){
    _settingsSaver.useNick = boolean;
    _updateCombined();
    _settingsOut.add(_settingsSaver);
  }

  void _updateCombined(){
    if (_settingsSaver.useNick) {
      for (int i = 0; i < _settingsSaver.locs.length; i++) {
        _settingsSaver.combined[_gpsAdded ? i + 1 : i] =
            _settingsSaver.nicks[i] == '' ? _settingsSaver.locs[i] : _settingsSaver.nicks[i];
      }
    } else {
      for (int i = 0; i < _settingsSaver.locs.length; i++) {
        _settingsSaver.combined[_gpsAdded ? i + 1 : i] = _settingsSaver.locs[i];
      }
    }  
  }

  void _handleUnits(String string){
    _settingsSaver.units = string;
    _settingsOut.add(_settingsSaver);
    _tempUnitOut.add(string);
    _weatherEventIn.add(SetTemperatureUnit(tempUnit:string));
    for(LocationSearchData locationSearchData in _settingsSaver.lsd){
      _weatherEventIn.add(GetWeather(locationSearchData: locationSearchData));
    }
  }

  LocationSearchData _getGPSCoords(){
    return LocationSearchData(name: 'GPS', lat: 0.0, long: 0.0);
  }
  void close(){
    _settingsOut.close();
    //_settingsIn.close();
    _locStringOut.close();
    _selectedIn.close();
    _selectedOut.close();
    _eventIn.close();
    _coordsOut.close();
    _lsdOut.close();
    _tempUnitOut.close();
  }
}

class SettingsEvent{}

class SettingsAdd extends SettingsEvent{}

class SettingsDelete extends SettingsEvent{
  int index;

  SettingsDelete({this.index});
}

class SettingsLSD extends SettingsEvent{
  LocationSearchData locationSearchData;

  SettingsLSD({this.locationSearchData});
}

class LocString extends SettingsEvent{
  int index;

  LocString({this.index});
}

class NickString extends SettingsEvent{
  int index;

  NickString({this.index});
}

class GPSChange extends SettingsEvent{
  bool boolean;

  GPSChange({this.boolean});
}

class NickChange extends SettingsEvent{
  bool boolean;

  NickChange({this.boolean});
}

class UnitsChange extends SettingsEvent{
  String string;

  UnitsChange({this.string});
}

class HandleSettings extends SettingsEvent{}