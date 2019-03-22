
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MapToIcons{
  static IconData getWeatherIcon(int code, int day){
    IconData iconData;
    const IconData weatherCloudy = MdiIcons.weatherCloudy;
    const IconData weatherFog = MdiIcons.weatherFog;
    const IconData weatherHail = MdiIcons.weatherHail;
    // const IconData weatherHurricane = MdiIcons.weatherHurricane;
    const IconData weatherLightning = MdiIcons.weatherLightning;
    const IconData weatherLightningRainy = MdiIcons.weatherLightningRainy;
    const IconData weatherNight = MdiIcons.weatherNight;
    const IconData weatherPartlycloudy = MdiIcons.weatherPartlycloudy;
    const IconData weatherPouring = MdiIcons.weatherPouring;
    const IconData weatherRainy = MdiIcons.weatherRainy;
    const IconData weatherSnowy = MdiIcons.weatherSnowy;
    const IconData weatherSnowyRainy = MdiIcons.weatherSnowyRainy;
    const IconData weatherSunny = MdiIcons.weatherSunny;
    // const IconData weatherSunset = MdiIcons.weatherSunset;
    // const IconData weatherWindy = MdiIcons.weatherWindy;
    // const IconData weatherWindyVariant = MdiIcons.weatherWindyVariant;
    switch(code){
      case 1000:
      iconData = day == 1 ? weatherSunny : weatherNight;
      break;
      case 1003:
      iconData = day == 1 ? weatherPartlycloudy : weatherNight;
      break;
      case 1006:
      case 1009:
      iconData = weatherCloudy;
      break;
      case 1030:
      case 1135:
      case 1147:
      iconData = weatherFog;
      break;
      case 1063:
      case 1150:
      case 1153:
      case 1168:
      case 1171:
      case 1180:
      case 1183:
      case 1186:
      case 1189:
      case 1198:
      case 1201:
      case 1240:
      case 1243:
      iconData = weatherRainy;
      break;
      case 1192:
      case 1195:
      case 1246:
      iconData = weatherPouring;
      break;
      case 1066:
      case 1210:
      case 1213:
      case 1216:
      case 1219:
      case 1222:
      case 1225:
      case 1279:
      case 1282:
      iconData = weatherSnowy;
      break;
      case 1069:
      case 1072:
      case 1204:
      case 1207:
      case 1237:
      case 1249:
      case 1252:
      iconData = weatherHail;
      break;
      case 1261:
      case 1264:
      iconData = weatherSnowyRainy;
      break;
      case 1087:
      iconData = weatherLightning;
      break;
      case 1114:
      case 1117:
      case 1255:
      case 1258:
      iconData = weatherSnowy;
      break;
      case 1273:
      case 1276:
      iconData = weatherLightningRainy;
      break;
      default:
      iconData = weatherSunny;
      break;
    }
    return iconData;
  }  

  static IconData getSunriseIcon(){
    // const IconData weatherSunsetDown = MdiIcons.weatherSunsetDown;
    // const IconData weatherSunsetUp = MdiIcons.weatherSunsetUp;
    return MdiIcons.weatherSunsetUp;
  }

  static IconData getSunsetIcon(){
    return MdiIcons.weatherSunsetDown;
  }

  static IconData getMoonIcon(){
    return MdiIcons.weatherNight;
  }
}