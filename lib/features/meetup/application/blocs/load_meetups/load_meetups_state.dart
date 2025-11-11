part of 'load_meetups_bloc.dart';

@freezed
class LoadMeetupsState with _$LoadMeetupsState{
  const factory LoadMeetupsState.initial() = LoadMeetupsStateInitial;
  const factory LoadMeetupsState.loading() = LoadMeetupsStateLoading;
  const factory LoadMeetupsState.success(List<Meetup> activeMeetups, List<Meetup> notActiveMeetups) = LoadMeetupsStateSuccess;
  const factory LoadMeetupsState.error(String errorMessage) = LoadMeetupsStateError;
}
