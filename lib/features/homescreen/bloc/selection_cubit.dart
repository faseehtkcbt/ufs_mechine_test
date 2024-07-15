import 'package:flutter_bloc/flutter_bloc.dart';

part 'selection_state.dart';

class SelectionCubit extends Cubit<SelectionState> {
  SelectionCubit() : super(SelectionInitial(0));


  void selectIndex(int index){
    emit(SelectionInitial(index));
  }
}
