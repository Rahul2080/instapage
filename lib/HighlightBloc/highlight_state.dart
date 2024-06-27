part of 'highlight_bloc.dart';

@immutable
sealed class HighlightState {}

final class HighlightInitial extends HighlightState {}
class highlightBlocloading extends HighlightState{}
class highlightBlocloaded extends HighlightState{}
class highlightBlocError extends HighlightState{}