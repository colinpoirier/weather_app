import 'package:flutter/material.dart';
import 'package:weather_app/forecast/background/background_with_rings.dart';
import 'package:weather_app/forecast/settings_saver.dart';
import 'package:weather_app/generic_widgets/bloc_provider.dart';
import 'package:weather_app/generic_widgets/my_type_ahead.dart';

class TextfieldHero extends StatelessWidget {
  final String hero;
  final String init;

  TextfieldHero({Key key, this.hero, this.init}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller =
        TextEditingController.fromValue(TextEditingValue(text: init));
    List returnData = [null, null, null];
    bool selected = false;
    final bloc = WeatherInherited.of(context).bloc;
    return Stack(
      children: <Widget>[
        BackgroundWithRings(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Row(
              children: <Widget>[
                Transform.rotate(
                  angle: 3.1415926,
                  alignment: Alignment.center,
                  child: IconButton(
                    onPressed: () => _controller.clear(),
                    icon: Icon(Icons.backspace),
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: Hero(
                    tag: hero,
                    child: Material(
                      type: MaterialType.transparency,
                      child: TypeAheadField(
                        debounceDuration: Duration(milliseconds: 500),
                        suggestionsBoxDecoration: SuggestionsBoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.transparent,
                          elevation: 0,
                        ),
                        loadingBuilder: (context) {
                          return ListTile(
                            title: Container(
                              height: 50,
                              alignment: Alignment.center,
                              child: CircularProgressIndicator(),
                            ),
                          );
                        },
                        noItemsFoundBuilder: (context) {
                          return ListTile(
                            title: Text(
                              'No location\nfound',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          );
                        },
                        textFieldConfiguration: TextFieldConfiguration(
                          controller: _controller,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            alignLabelWithHint: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                            labelText: 'City, zip, or place',
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        itemBuilder: (context, suggestion) {
                          return ListTile(
                            title: Text(
                              suggestion[0][0],
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                letterSpacing: 1.1,
                              ),
                            ),
                            subtitle: Text(
                              suggestion[0][1],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                letterSpacing: 1.1,
                              ),
                            ),
                          );
                        },
                        suggestionsCallback: (pattern) async {
                          var results = [];
                          if (pattern.length > 4) {
                            await bloc.getApixuSearchResults(pattern);

                            if (bloc
                                .apixuSearchRes.apixuSearchResults.isNotEmpty) {
                              bloc.apixuSearchRes.apixuSearchResults
                                  .forEach((f) {
                                if(!bloc.lsdComparer.containsKey(f.id)){
                                  String temp = f.name;

                                  RegExp exp = RegExp(r'(.*?, .*?)(?:,|$)');

                                  Match match = exp.firstMatch(temp);
                                  var subRes = [];
                                  subRes.add(match.group(1).split(', '));
                                  LocationSearchData lsd = LocationSearchData()
                                    ..name = subRes[0][0]
                                    ..id = f.id
                                    ..lat = f.lat
                                    ..long = f.lon;

                                  subRes.add(lsd);

                                  results.add(subRes);
                                }
                              });
                            }
                          }
                          return results;
                        },
                        onSuggestionSelected: (suggestion) {
                          _controller.text = suggestion[0][0];
                          returnData[2] = suggestion[1];
                          selected = true;
                        },
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    returnData[0] = selected;
                    returnData[1] = _controller.text;
                    Navigator.of(context).pop(returnData);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
