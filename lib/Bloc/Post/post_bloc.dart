import 'package:bloc/bloc.dart';
import 'package:instapro/Repository/Api/PostApi.dart';
import 'package:instapro/Repository/ModelClass/PostModel.dart';
import 'package:meta/meta.dart';

part 'post_event.dart';
part 'post_state.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  late PostModel postModel;
  PostApi postApi=PostApi();
  PostBloc() : super(PostInitial()) {
    on<FeatchPost>((event, emit) async{
      emit(PostBlocLoading());

      try{
        postModel=await postApi.getpost(event.post);
        emit(PostBlocLoaded());
      }
          catch(a){emit(PostBlocError());

          }
    });
  }
}
