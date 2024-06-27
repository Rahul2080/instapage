import 'package:bloc/bloc.dart';
import 'package:instapro/Repository/Api/TagApi.dart';
import 'package:instapro/Repository/ModelClass/TagModel.dart';
import 'package:meta/meta.dart';

part 'tag_event.dart';
part 'tag_state.dart';

class TagBloc extends Bloc<TagEvent, TagState> {
  late TagModel tagModel=TagModel();
  TagApi tagApi=TagApi();
  TagBloc() : super(TagInitial()) {
    on<FeatchTag>((event, emit) async{
      emit(TagBlocLoading());

      try{tagModel=await tagApi.gettag(event.tag);

      emit(TagBlocLoaded());}

          catch(a){
        emit(TagBlocError());
          }
    });
  }
}
