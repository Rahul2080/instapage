part of 'highlight_bloc.dart';

@immutable
sealed class HighlightEvent {}
class FetchHighlight extends HighlightEvent{
  final String hightlight ;
  FetchHighlight({required this.hightlight});
}

