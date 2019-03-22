import 'package:flutter/material.dart';
import 'package:weather_app/forecast/textfield_hero.dart';
import 'package:quiver_hashcode/hashcode.dart';
import 'package:weather_app/generic_widgets/bloc_provider.dart';
import 'package:weather_app/generic_widgets/page_route_builder.dart';
import 'package:weather_app/generic_widgets/settings_bloc.dart';

class SettingsSaver{
  bool useNick = false;
  bool useGPS = false;
  String units = '';
  List<String> nicks = [''];
  List<String> locs = [''];
  List<String> combined = [''];
  List<LocationSearchData> lsd = [];
  List<LocationListItem> locationList
   = [
    LocationListItem(nickController: TextEditingController()..value = TextEditingValue(text: ''),
    locController: TextEditingController(text: ''),
    )
  ];

  SettingsSaver();

  SettingsSaver.fromJson(Map<String, dynamic> json)
    : useNick = json['useNick'],// as bool,
      useGPS = json['useGPS'],// as bool,
      units = json['units'],// as String,
      nicks = json['nicks'],// as List<String>,
      locs = json['locs'],// as List<String>,
      combined = json['combined'],// as List<String>,
      lsd = json['lsd'],// as List<LocationSearchData>,
      locationList = json['locationList'];// as List<LocationListItem>;

  SettingsSaver.fromStringMap(String string){
    Map<String, dynamic> json = this.fromStringToMap(string);
    useNick = json['useNick'];
    useGPS = json['useGPS'];
    units = json['units'];
    nicks = json['nicks'];
    locs = json['locs'];
    combined = json['combined'];
    lsd = json['lsd'];
    locationList = json['locationList'];
    // print(mep);
    // SettingsSaver.fromJson(mep);
  }
  

  Map<String, dynamic> toJson() =>
  {
    'useNick' : useNick,
    'useGPS' : useGPS,
    'units' : units,
    'nicks' : nicks,
    'locs' : locs,
    'combined' : combined,
    'locationList' : locationList,
    'lsd' : lsd
  };

  String toString(){
    Map<String, dynamic> map = this.toJson();
    List dsl = [];
    lsd.forEach((f)=>dsl.add(f.toJson().toString()));
    map['lsd'] = dsl;
    return map.toString();
  }

  Map<String, dynamic> fromStringToMap(String json){
    Map<String, dynamic> map = Map<String, dynamic>();

    RegExp exp1 = RegExp(r'(\w+): (\w+)');
    RegExp exp = RegExp(r'(\w+): (?:\[)(.*?)(?:\])');

    Iterable<Match> matches = exp1.allMatches(json);
    for(Match m in matches){
      if(m.group(1) == 'useNick' || m.group(1) == 'useGPS'){
      map[m.group(1)] = m.group(2) == 'true' ? true : false;
      } else if (m.group(1) == 'units'){
        map[m.group(1)] = m.group(2);
      }
    } 

    matches = exp.allMatches(json);
    for(Match m in matches){
      if(m.group(1) != 'lsd'){
        List l = m.group(2).split(', ');
        map[m.group(1)] = l;
      } else {
        map[m.group(1)] = m.group(2);
      }
    }
 
    List<LocationListItem> list = List<LocationListItem>();

    for(int i = 0; i < map['locationList'].length; i++){
      list.add(LocationListItem(
        locController: TextEditingController(text: map['locs'][i]),
        nickController: TextEditingController(text: map['nicks'][i]),
        ),
      );
    }
    
    map['locationList'] = list;     

    List<LocationSearchData> mep = [];
    LocationSearchData locData = LocationSearchData();
    RegExp exp2 = RegExp(r'(\{.*?\})');
    matches = exp2.allMatches(map['lsd']);
    for (Match m in matches) {
      mep.add(LocationSearchData.fromJson(locData.fromStringToMap(m.group(0))));
    }
    map['lsd'] = mep;    

    return map;
  }

  void addListenerLoc(int index, void func()){
    locationList[index].locController.addListener(func);
  }

  void addListenerNick(int index, void func()){
    locationList[index].nickController.addListener(func);
  }

  void add(String text){
    locationList.add(LocationListItem(nickController: TextEditingController(text: text),
    locController: TextEditingController(text: text)));
  }

  void removeAt(int index){
    // settingsSaver[index].locController.dispose();
    // settingsSaver[index].nickController.dispose();
    locationList.removeAt(index);
  }

  void dispose(){
    locationList.forEach((f){
      //f.nickController.
      f.nickController.dispose();
      f.locController.dispose();
    });
  }
}

class LocationSearchData{
  String name;
  int id;
  double lat;
  double long;

  LocationSearchData(
    {this.name = '',
    this.id = 0,
    this.lat = 0.0,
    this.long = 0.0,
  });

  LocationSearchData.fromJson(Map<String, dynamic> json):
    name = json['name'] as String,
    id = int.parse(json['id']),
    lat = double.parse(json['lat']),
    long = double.parse(json['long']);

  Map<String, dynamic> toJson()=>
  {
    'name' : name,
    'id' : id,
    'lat' : lat,
    'long' : long
  };

  Map<String, dynamic> fromStringToMap(String json){
    Map<String, dynamic> map = Map<String, dynamic>();
    RegExp exp3 = RegExp(r'(\w+): ((?:-)?\w+(?:\.\d+)?)');
    Iterable<Match> matches1 = exp3.allMatches(json);
    for (Match m1 in matches1) {
      map[m1.group(1)] = m1.group(2);
    }
    return map;
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationSearchData &&
        name == other.name &&
        id == other.id &&
        lat == other.lat &&
        long == other.long;
  }

  @override
  int get hashCode => hash4(name, id, lat, long);
}

class LocationListItem extends StatefulWidget {
  final TextEditingController nickController;
  final TextEditingController locController;

  const LocationListItem({Key key, this.nickController, this.locController})
      : super(key: key);

  @override
  _LocationListItemState createState() => _LocationListItemState();
}

class _LocationListItemState extends State<LocationListItem> {
  
  @override
  Widget build(BuildContext context) {
    final String heroString = this.hashCode.toString();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 150,
          child: TextField(
            controller: widget.nickController,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white
            ),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              alignLabelWithHint: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white,),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white,
                width: 2),
              ),
              labelText: 'Home, Work, etc.',
              labelStyle: TextStyle(
                color: Colors.white
              )
            ),
          ),
        ),
        SizedBox(width: 15,),
        InkWell(
          //behavior: HitTestBehavior.opaque,
          onTap: () async{
            var val = await Navigator.push(context, MyRouter(
              TextfieldHero(init: widget.locController.text, hero: heroString)
            ));
            if(val[0]){
              widget.locController.text = val[1];
              // int c = WeatherInherited.of(context).saver.locs.indexOf(widget.locController.text);
              // WeatherInherited.of(context).saver.lsd[c] = val[2];
              WeatherInherited.of(context).settingsBloc.eventIn.add(SettingsLSD(locationSearchData: val[2]));              
            }
          },
          child: Container(
            width: 150,
            child: Hero(
              tag: heroString,
              child: Material(
                type: MaterialType.transparency,
                child: TextField(
                  enabled: false,
                  controller: widget.locController,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white
                  ),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    alignLabelWithHint: true,
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white,
                      width: 2),
                    ),
                    labelText: 'City, zip, or place',
                    labelStyle: TextStyle(
                      color: Colors.white
                    )
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
