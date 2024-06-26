part of 'insta_bloc.dart';

@immutable
sealed class InstaState {}

final class InstaInitial extends InstaState {}
class instaBlocLoading extends InstaState{}
class instaBlocLoaded extends InstaState{}
class instaBlocError extends InstaState{}