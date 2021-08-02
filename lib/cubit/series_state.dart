import 'package:swiper_with_details/services/json_details/datum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swiper_with_details/services/parsing_attributes.dart';

class SeriesCubit extends Cubit<List<Datum>> {
  final _dataServices = DataServices();

  SeriesCubit() : super([]);

  void fetchData() async => emit(await _dataServices.fetchData());
}

abstract class SeriesState {}

class LoadingSeriesState extends SeriesState {}

class LoadedSeriesState extends SeriesState {
  late List<Datum> series;
  LoadedSeriesState({required this.series});
}
