import 'package:bloc/bloc.dart';
import 'package:instapro/Repository/Api/insta%20Api.dart';
import 'package:instapro/Repository/ModelClass/InstaModel.dart';
import 'package:meta/meta.dart';
part 'insta_event.dart';
part 'insta_state.dart';

class InstaBloc extends Bloc<InstaEvent, InstaState> {
  late InstaModel instaModel;
  InstaApi instaApi=InstaApi();
  InstaBloc() : super(InstaInitial()) {
    on<Fetchinsta>((event, emit)async {
      emit(instaBlocLoading());
      try{
        instaModel =await instaApi.getinsta(event.userName);
        emit(instaBlocLoaded());
      }
catch(a){
        emit(instaBlocError());
}
    });
  }
}
