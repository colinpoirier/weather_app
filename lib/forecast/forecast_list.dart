//import 'package:flutter/material.dart';
import 'package:weather_app/forecast/radial_list.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

final RadialListViewModel forecastRadialList =  RadialListViewModel(
  items: [
     RadialListItemViewModel(
      //icon:  AssetImage('assets/ic_rain.png'),
      // icon: MdiIcons.weatherRainy,
      icon: MdiIcons.nullIcon,
      // title: '11:30',
      // subtitle: 'Light Rain',
      //isSelected: true,
    ),
     RadialListItemViewModel(
      //icon:  AssetImage('assets/ic_rain.png'),
      // icon: MdiIcons.weatherRainy,
      icon: MdiIcons.nullIcon,
      // title: '12:30P',
      // subtitle: 'Light Rain',
    ),
     RadialListItemViewModel(
      //icon:  AssetImage('assets/ic_cloudy.png'),
      // icon: MdiIcons.weatherCloudy,
      icon: MdiIcons.nullIcon,
      // title: '1:30P',
      // subtitle: 'Cloudy',
    ),
     RadialListItemViewModel(
      //icon:  AssetImage('assets/ic_sunny.png'),
      // icon: MdiIcons.weatherSunny,
      icon: MdiIcons.nullIcon,
      // title: '2:30P',
      // subtitle: 'Sunny',
    ),
     RadialListItemViewModel(
      //icon:  AssetImage('assets/ic_sunny.png'),
      // icon: MdiIcons.weatherSunny,
      icon: MdiIcons.nullIcon,
      // title: '3:30P',
      // subtitle: 'Sunny',
    ),
  ],
);