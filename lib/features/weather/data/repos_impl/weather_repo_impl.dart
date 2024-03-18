import 'package:weather/features/weather/data/data_source/remote_data_source.dart';
import 'package:weather/features/weather/domain/entities/weather_entity.dart';
import 'package:weather/features/weather/domain/repos/weather_repo.dart';

class WeatherRepoImpl implements WeatherRepo {
  final RemoteDataSource remoteDataSource;

  WeatherRepoImpl(this.remoteDataSource);
  @override
  Future<WeatherEntity> getWeatherByCityName(String cityName) async {
    return await remoteDataSource.getWeatherByCityName(cityName);
  }
}
