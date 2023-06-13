part of 'media_bloc.dart';

abstract class MediaEvent extends Equatable {
  const MediaEvent();

  @override
  List<Object> get props => [];
}

class GetSpaceMediaByDate extends MediaEvent {
  const GetSpaceMediaByDate(this.date);
  final DateTime date;
}
