part of 'showpassword_cubit.dart';

class ShowpasswordState extends Equatable {
  final bool isPasswordVisible;
  const ShowpasswordState({required this.isPasswordVisible});

  @override
  List<Object> get props => [isPasswordVisible];
}
