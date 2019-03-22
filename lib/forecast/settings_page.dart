import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:weather_app/forecast/settings_saver.dart';
import 'package:weather_app/forecast/background/background_with_rings.dart';
import 'package:weather_app/generic_widgets/bloc_provider.dart';
import 'package:weather_app/generic_widgets/my_drop_down.dart';
import 'package:weather_app/generic_widgets/settings_bloc.dart';

class SettingsPage extends StatelessWidget {

  const SettingsPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsBloc = WeatherInherited.of(context).settingsBloc;
    return WillPopScope(
      onWillPop: () async {
        settingsBloc.eventIn.add(HandleSettings());
        return true;
      },
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Stack(
          children: <Widget>[
            BackgroundWithRings(),
            Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                elevation: 0,
                // title: Text(
                //   'Settings',
                //   style: TextStyle(color: Colors.white),
                // ),
                title: Icon(Icons.settings),
                centerTitle: false,
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.close),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                      settingsBloc.eventIn.add(HandleSettings());
                    },
                  ),
                ],
              ),
              body: SingleChildScrollView(
                physics: MediaQuery.of(context).viewInsets.bottom == 0
                    ? NeverScrollableScrollPhysics()
                    : AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: <Widget>[
                    NameLocRow(
                      childLeft: SettingsText('Name (Opt)'),
                      childMiddle: SettingsText('Location'),
                      childRight: AddToListItemBuilder(),
                    ),
                    ListItemBuilder(),
                    UseRow(
                      childLeft: SettingsText('Use Name'),
                      childRight: UseNameBuilder(),
                    ),
                    UseRow(
                      childLeft: SettingsText('Use GPS'),
                      childRight: UseGPSBuilder(),
                    ),
                    UseRow(
                      childLeft: SettingsText('Units'),
                      childRight: UnitsBuilder(),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NameLocRow extends StatelessWidget {
  final Widget childLeft;
  final Widget childMiddle;
  final Widget childRight;

  NameLocRow({Key key, this.childLeft, this.childMiddle, this.childRight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            OCDContainer(
              child: childLeft,
            ),
            SizedBox(
              width: 15,
            ),
            OCDContainer(
              child: childMiddle,
            ),
          ],
        ),
        childRight,
      ],
    );
  }
}

class AddToListItemBuilder extends StatelessWidget {
  AddToListItemBuilder({Key key}) : super(key: key);

  void adder(BuildContext context) {
    WeatherInherited.of(context).settingsBloc.eventIn.add(SettingsAdd());
  }

  @override
  Widget build(BuildContext context) {
    final settingsBloc = WeatherInherited.of(context).settingsBloc;
    return StreamBuilder(
        stream: settingsBloc.settingsOut,
        builder: (context, AsyncSnapshot<SettingsSaver> snapshot) {
          return snapshot.hasData
              ? IconButton(
                  icon: Icon(Icons.add),
                  color: Colors.white,
                  disabledColor: Colors.grey.withOpacity(0.8),
                  onPressed: snapshot.data.locationList.length < 10
                      ? () => adder(context)
                      : null,
                )
              : Container();
        });
  }
}

class ListItemBuilder extends StatelessWidget {
  ListItemBuilder({Key key}) : super(key: key);

  void deleteMe(int index, BuildContext context) {
    WeatherInherited.of(context)
        .settingsBloc
        .eventIn
        .add(SettingsDelete(index: index));
    FocusScope.of(context).requestFocus(FocusNode());
  }

  void onChangeNick(int index, BuildContext context) {
    WeatherInherited.of(context)
        .settingsBloc
        .eventIn
        .add(NickString(index: index));
  }

  void onChangeLoc(int index, BuildContext context) {
    WeatherInherited.of(context)
        .settingsBloc
        .eventIn
        .add(LocString(index: index));
  }

  @override
  Widget build(BuildContext context) {
    final settingsBloc = WeatherInherited.of(context).settingsBloc;
    return StreamBuilder(
        stream: settingsBloc.settingsOut,
        builder: (context, AsyncSnapshot<SettingsSaver> snapshot) {
          return snapshot.hasData
              ? AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  height: (80.0 * snapshot.data.locationList.length)
                      .clamp(100.0, 400.0),
                  child: ListView.builder(
                    itemExtent: 80,
                    itemCount: snapshot.data.locationList.length,
                    itemBuilder: (context, index) {
                      snapshot.data.addListenerLoc(
                          index, () => onChangeLoc(index, context));
                      snapshot.data.addListenerNick(
                          index, () => onChangeNick(index, context));
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          snapshot.data.locationList[index],
                          index > 0
                              ? IconButton(
                                  icon: Icon(
                                    Icons.remove,
                                    color: Colors.white,
                                  ),
                                  onPressed: () => deleteMe(index, context),
                                )
                              : SizedBox(width: 50)
                        ],
                      );
                    },
                  ),
                )
              : Container();
        });
  }
}

class UseNameBuilder extends StatelessWidget {
  UseNameBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsBloc = WeatherInherited.of(context).settingsBloc;
    return StreamBuilder<SettingsSaver>(
      stream: settingsBloc.settingsOut,
      initialData: null,
      builder: (context, AsyncSnapshot<SettingsSaver> snapshot) {
        return snapshot.hasData
            ? MySwitch(
                value: snapshot.data.useNick,
                onChanged: (val) {
                  settingsBloc.eventIn.add(NickChange(boolean: val));
                })
            : Container();
      },
    );
  }
}

class UseGPSBuilder extends StatelessWidget {
  UseGPSBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsBloc = WeatherInherited.of(context).settingsBloc;
    return StreamBuilder<SettingsSaver>(
      stream: settingsBloc.settingsOut,
      initialData: null,
      builder: (context, AsyncSnapshot<SettingsSaver> snapshot) {
        return snapshot.hasData
            ? MySwitch(
                value: snapshot.data.useGPS,
                onChanged: (val) {
                  settingsBloc.eventIn.add(GPSChange(boolean: val));
                })
            : Container();
      },
    );
  }
}

class UnitsBuilder extends StatelessWidget {
  UnitsBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingsBloc = WeatherInherited.of(context).settingsBloc;
    return StreamBuilder(
        stream: settingsBloc.settingsOut,
        initialData: null,
        builder: (BuildContext context, AsyncSnapshot<SettingsSaver> snapshot) {
          return snapshot.hasData
              ? Container(
                  width: 60,
                  alignment: Alignment.center,
                  child: MyDropdownButton<String>(
                    elevation: 0,
                    onChanged: (val) {
                      settingsBloc.eventIn.add(UnitsChange(string: val));
                    },
                    value: snapshot.data.units,
                    items: [
                      MyDropdownMenuItem(
                        value: 'F',
                        child: SettingsText('   °F'),
                      ),
                      MyDropdownMenuItem(
                        value: 'C',
                        child: SettingsText('   °C'),
                      ),
                      MyDropdownMenuItem(
                        value: 'Hybrid',
                        child: SettingsText('Hybrid'),
                      )
                    ],
                  ),
                )
              : Container();
        });
  }
}

class MySwitch extends Switch {
  final value;
  final ValueChanged<bool> onChanged;

  MySwitch({this.onChanged, this.value})
      : super(
          value: value,
          onChanged: onChanged,
          inactiveThumbColor: Colors.grey,
          activeColor: Colors.white,
        );
}

class OCDContainer extends Container {
  final Widget child;

  OCDContainer({this.child})
      : super(
          child: child,
          width: 150,
          alignment: Alignment.center,
        );
}

class SettingsText extends Text {
  SettingsText(String data)
      : super(
          data,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        );
}

class UseRow extends StatelessWidget {
  final Widget childLeft;
  final Widget childRight;

  UseRow({Key key, this.childLeft, this.childRight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: 135,
          child: childLeft,
        ),
        childRight,
      ],
    );
  }
}
