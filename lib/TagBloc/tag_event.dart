part of 'tag_bloc.dart';

@immutable
sealed class TagEvent {}
class FeatchTag extends TagEvent {
  final String tag;
  FeatchTag({required this.tag});
}