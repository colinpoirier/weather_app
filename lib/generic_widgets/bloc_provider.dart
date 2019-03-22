import 'package:flutter/material.dart';
import 'package:weather_app/generic_widgets/settings_bloc.dart';
import 'package:weather_app/generic_widgets/weather_bloc.dart';

class BlocProvider extends StatefulWidget {
  
  final Widget child;

  const BlocProvider({Key key, this.child}) : super(key: key);


  @override
  _BlocProviderState createState() => _BlocProviderState();
}

class _BlocProviderState extends State<BlocProvider> {
  WeatherBloc weatherBloc;
  SettingsBloc settingsBloc;

  void initState() { 
    super.initState();
    weatherBloc = WeatherBloc();
    settingsBloc = SettingsBloc(weatherBloc.eventIn);
  }

  @override
  void dispose() { 
    weatherBloc.dispose();
    settingsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WeatherInherited(
      bloc: weatherBloc,
      settingsBloc: settingsBloc,
      child: widget.child,
    );
  }
}

class WeatherInherited extends InheritedWidget {

  final SettingsBloc settingsBloc;
  final WeatherBloc bloc;
  final Widget child;

  WeatherInherited({this.settingsBloc, this.bloc, this.child}):super(child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    
    return true;
  }

  static WeatherInherited of(BuildContext context) =>
    context.inheritFromWidgetOfExactType(WeatherInherited);
}


