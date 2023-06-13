part of 'media_bloc.dart';

abstract class MediaState extends Equatable {
    const MediaState();

  @override
  List<Object> get props => [];
}

class MediaInitial extends MediaState {
 
}
class SpaceMediaState extends MediaState {
  SpaceMediaState(this.data);
  final SpaceMediaModel data;
}
class Loading extends MediaState {

}
class LoadingState extends MediaState {

}

class ErrorState extends MediaState {

}