 
 //
 //
 //
 import 'package:weather/features/weather/domain/entities/weather_entity.dart';

abstract class WeatherRepo {
  Future<WeatherEntity> getWeatherByCityName(String cityName);
}
