part of 'insta_bloc.dart';

@immutable
sealed class InstaEvent {}
class Fetchinsta extends InstaEvent{
  final String userName;
  Fetchinsta({required this.userName});
}
