part of 'follower_bloc.dart';

@immutable
sealed class FollowerEvent {}
class FeatchFollower extends FollowerEvent {
  final String follower;
FeatchFollower({required this.follower});
}
