<<<<<<< HEAD
abstract class SignUpState {
  const SignUpState();
=======
abstract class SignUpState  {
  const SignUpState();

  @override
  List<Object> get props => [];
>>>>>>> e763aa1457bfd7182f6d678d543f79ef13ce4d16
}

class SignUpInitial extends SignUpState {}

class SignUpLoading extends SignUpState {}

class SignUpSuccess extends SignUpState {}

class SignUpError extends SignUpState {
  final String message;

  SignUpError({required this.message});
<<<<<<< HEAD
}
=======

  @override
  List<Object> get props => [message];
}
>>>>>>> e763aa1457bfd7182f6d678d543f79ef13ce4d16
