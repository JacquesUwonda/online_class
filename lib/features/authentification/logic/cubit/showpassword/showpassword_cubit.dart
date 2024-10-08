import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'showpassword_state.dart';

class ShowpasswordCubit extends Cubit<ShowpasswordState> {
  ShowpasswordCubit() : super(const ShowpasswordState(isPasswordVisible: true));

  void showPassword({required bool showPassword}) {
    emit(
      ShowpasswordState(isPasswordVisible: showPassword),
    );
  }
}
