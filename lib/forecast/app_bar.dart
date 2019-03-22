import 'package:flutter/material.dart';
import 'package:weather_app/forecast/settings_saver.dart';
//import 'package:flutter/scheduler.dart' show timeDilation;
import 'package:weather_app/generic_widgets/bloc_provider.dart';
import 'package:weather_app/generic_widgets/spinner_text.dart';
import 'package:weather_app/generic_widgets/vertical_dragger.dart';
import 'package:weather_app/generic_widgets/my_drop_down.dart';

class ForecastAppBar extends StatefulWidget {
  final Function onDrawerArrowTap;
  final String selectedDay;
  final SlideDirection slideDirection;
  
  ForecastAppBar({
    this.slideDirection = SlideDirection.none,
    this.onDrawerArrowTap,
    this.selectedDay,
  });

  @override
  ForecastAppBarState createState() {
    return new ForecastAppBarState();
  }
}

class ForecastAppBarState extends State<ForecastAppBar> {

  @override
  Widget build(BuildContext context) {
    //timeDilation = 18.0;
    //final bloc = WeatherInherited.of(context).bloc;
    final settingsBloc = WeatherInherited.of(context).settingsBloc;
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: false,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SpinnerText(
                text: widget.selectedDay,
                slideDirection: widget.slideDirection,
              ),
              StreamBuilder(
                //stream: bloc.settingsOut,
                stream: settingsBloc.settingsOut,
                initialData: null,
                builder: (BuildContext context,
                    AsyncSnapshot<SettingsSaver> snapshot) {
                    //  AsyncSnapshot<List<String>> snapshot){
                  if(snapshot.hasData){
                    //print(int.parse(settingsBloc.selectedOut);
                    return MyDropdownButton(
                      iconSize: 30,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                      ),
                      elevation: 0,
                      isDense: true,
                      //value: bloc.selected,
                      value: settingsBloc.selectedOut.value,
                      onChanged: (val) {
                        //if(val!= bloc.selected){
                        //bloc.getApixuForecast(id)
                        //bloc.selectedChanger.add(val);
                        settingsBloc.selectedIn.add(val);
                        setState(() {});//}
                      },
                      //items: snapshot.data
                      items: snapshot.data.combined
                          .map(
                            (f) => MyDropdownMenuItem(
                                  value: snapshot.data.combined.indexOf(f),
                                  //value: snapshot.data.indexOf(f),
                                  child: Text(
                                    f,
                                    overflow: TextOverflow.fade,
                                    softWrap: false,
                                  ),
                                ),
                          )
                          .toList(),
                    );                    
                  } else {
                    return Container(color: Colors.red,);
                  }
                },
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 20,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue[900].withOpacity(0.1),
                    Colors.blue[900],
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 35.0,
          ),
          onPressed: widget.onDrawerArrowTap,
        )
      ],
    );
  }
}
