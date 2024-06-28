part of 'following_bloc.dart';

@immutable
sealed class FollowingEvent {}
class FeatchFollowing extends  FollowingEvent {
  final String following;
  FeatchFollowing({required this.following});
}