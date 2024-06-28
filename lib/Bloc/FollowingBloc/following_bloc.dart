import 'package:bloc/bloc.dart';
import 'package:instapro/Repository/Api/FollowerApi.dart';
import 'package:instapro/Repository/Api/FollowingApi.dart';
import 'package:instapro/Repository/ModelClass/FollowerModel.dart';
import 'package:instapro/Repository/ModelClass/FollowingModel.dart';
import 'package:meta/meta.dart';

part 'following_event.dart';
part 'following_state.dart';

class FollowingBloc extends Bloc<FollowingEvent, FollowingState> {
  late FollowingModel followingModel =FollowingModel();
  FollowingApi followingApi=FollowingApi();
  FollowingBloc() : super(FollowingInitial()) {
    on<FeatchFollowing>((event, emit) async{
      emit(FollowingBlocLoading());
      try{followingModel=await followingApi.getfollowing(event.following);
      emit(FollowingBlocLoaded());}

          catch(a){emit(FollowingBlocError());}

    });
  }
}
