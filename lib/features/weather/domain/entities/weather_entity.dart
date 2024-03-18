class WeatherEntity {
  final int id, pressure;
  final String cityName, main, description;

  WeatherEntity(
    this.id,
    this.cityName,
    this.main,
    this.description,
    this.pressure,
  );
}
