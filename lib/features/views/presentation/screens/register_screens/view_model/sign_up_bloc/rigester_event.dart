part of 'rigester_bloc.dart';

@immutable
abstract class RigesterEvent {}


class NameRegisterEvent extends RigesterEvent{
  final String name;

  NameRegisterEvent(this.name);

}
class passwordRegisterEvent extends RigesterEvent{
  final String password;

  passwordRegisterEvent(this.password);

}
class ReTypepasswordRegisterEvent extends RigesterEvent{
  final String retypepassword;

  ReTypepasswordRegisterEvent(this.retypepassword);

}
class EmailRegisterEvent extends RigesterEvent{
  final String email;

  EmailRegisterEvent(this.email);

}
class UidRegisterEvent extends RigesterEvent{
  final String Uid;

  UidRegisterEvent(this.Uid);

}
class changeObsecureTextevent extends RigesterEvent{
  final bool obsecure;

  changeObsecureTextevent(this.obsecure);
}
class changesuffixicon extends RigesterEvent{

}
