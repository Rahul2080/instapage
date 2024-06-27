import 'package:bloc/bloc.dart';
import 'package:instapro/Repository/Api/Highlight_Api.dart';
import 'package:instapro/Repository/ModelClass/HighlightModel.dart';
import 'package:meta/meta.dart';

part 'highlight_event.dart';
part 'highlight_state.dart';

class HighlightBloc extends Bloc<HighlightEvent, HighlightState> {
  late HighlightModel highlightModel;
  HighlightApi highlightApi=HighlightApi();
  HighlightBloc() : super(HighlightInitial()) {
    on<FetchHighlight>((event, emit)async {
      emit (highlightBlocloading() );
      try{highlightModel = await highlightApi.getHighlight(event.hightlight);
      emit(highlightBlocloaded());}
          catch(a){
        emit(highlightBlocError());
          }
    });
  }
}
