import 'package:dio/dio.dart';
import 'package:weather/core/utils/constants.dart';
import 'package:weather/features/weather/data/models/weather_model.dart';

abstract class RemoteDataSource {
  Future<WeatherModel> getWeatherByCityName(String cityName);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  @override
  Future<WeatherModel> getWeatherByCityName(String cityName) async {
    final response = await Dio().get(
        '${AppConstants.baseUrl}/weather?q=$cityName&appid=${AppConstants.appKey}');
    return WeatherModel.fromJson(response.data);
  }
}
