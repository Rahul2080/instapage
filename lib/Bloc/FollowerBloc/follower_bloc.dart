import 'package:bloc/bloc.dart';
import 'package:instapro/Repository/Api/FollowerApi.dart';
import 'package:instapro/Repository/ModelClass/FollowerModel.dart';
import 'package:meta/meta.dart';

part 'follower_event.dart';
part 'follower_state.dart';

class FollowerBloc extends Bloc<FollowerEvent, FollowerState> {
  late FollowerModel followerModel =FollowerModel();
  FollowerApi followerApi =FollowerApi();
  FollowerBloc() : super(FollowerInitial()){
    on<FeatchFollower>((event, emit) async{
      emit(FollowerBlocLoading());
      try{
        followerModel=await followerApi.getfollower(event.follower);

      emit(FollowerBlocLoaded());
      }
          catch(a){
        emit(FollowerBlocError());
      }

    });
  }
}
