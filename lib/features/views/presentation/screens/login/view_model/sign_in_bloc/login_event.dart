part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {

}
class EmailLoginEvent extends LoginEvent{
final String email;

  EmailLoginEvent(this.email);

}
class passwordLoginEvent extends LoginEvent{
  final String password;

  passwordLoginEvent(this.password);

}

class changeObsecureTextevent extends LoginEvent{
  final bool obsecure;

  changeObsecureTextevent(this.obsecure);
}
class changesuffixicon extends LoginEvent{

}
