import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'erbil_event.dart';
part 'erbil_state.dart';

class ErbilBloc extends Bloc<ErbilEvent, ErbilState> {
  ErbilBloc() : super(ErbilInitial()) {
    on<ErbilEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
