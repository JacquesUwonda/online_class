import 'package:flutter_bloc/flutter_bloc.dart';

class WelcomeDotsCubit extends Cubit<int> {
  WelcomeDotsCubit() : super(0);

  void setPage(int page) => emit(page);
}
