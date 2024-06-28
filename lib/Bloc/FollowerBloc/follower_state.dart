part of 'follower_bloc.dart';

@immutable
sealed class FollowerState {}

final class FollowerInitial extends FollowerState {}
class FollowerBlocLoading extends FollowerState {}
class FollowerBlocLoaded extends FollowerState {}
class FollowerBlocError extends FollowerState {}