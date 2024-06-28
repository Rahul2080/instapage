part of 'post_bloc.dart';

@immutable
sealed class PostEvent {}
class FeatchPost extends PostEvent{
  final String post;
  FeatchPost({required this.post});
}