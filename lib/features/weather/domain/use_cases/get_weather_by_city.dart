import 'package:weather/features/weather/domain/entities/weather_entity.dart';
import 'package:weather/features/weather/domain/repos/weather_repo.dart';

class GetWeatherByCityNameUseCase {
  final WeatherRepo weatherRepo;

  GetWeatherByCityNameUseCase(this.weatherRepo);

  Future<WeatherEntity> call(String cityName) async {
    return await weatherRepo.getWeatherByCityName(cityName);
  }
}
