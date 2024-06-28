part of 'following_bloc.dart';

@immutable
sealed class FollowingState {}

final class FollowingInitial extends FollowingState {}
class FollowingBlocLoading extends  FollowingState {}
class FollowingBlocLoaded extends  FollowingState {}
class FollowingBlocError extends  FollowingState {}