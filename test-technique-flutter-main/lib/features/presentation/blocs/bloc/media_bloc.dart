import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/space_media_model.dart';
import '../../../data/repositories/space_media_repository_impl.dart';

part 'media_event.dart';
part 'media_state.dart';

class MediaBloc extends Bloc<MediaEvent, MediaState> {
  MediaBloc() : super(MediaInitial()) {
    on<GetSpaceMediaByDate>(getSpaceMediaByDate);
  }
  Future<void> getSpaceMediaByDate(GetSpaceMediaByDate event, emit) async {
    emit(LoadingState());
    await SpaceMediaRepositoryImpl()
        .GetSpaceMediaByDate(event.date)
        .then((value) {
      emit(SpaceMediaState(value));
    }).catchError((e) {
       emit(ErrorState());
    });
  }
}
