part of 'post_bloc.dart';

@immutable
sealed class PostState {}

final class PostInitial extends PostState {}
class PostBlocLoading extends PostState {}
class PostBlocLoaded extends PostState {}
class PostBlocError extends PostState {}