part of 'tag_bloc.dart';

@immutable
sealed class TagState {}

final class TagInitial extends TagState {}
class TagBlocLoading extends TagState {}
class TagBlocLoaded extends TagState {}
class TagBlocError extends TagState {}