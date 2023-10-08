part of 'rigester_bloc.dart';

@immutable
class RegisterState {
  final String name;
  final String email;
  final String password;
  final String retypepassword;
  final String Uid;


  RegisterState({this.email="", this.password="",this.name="",this.retypepassword="", this.Uid=""});


  RegisterState copyWith({
    String? email,
    String? password,
    String? retypepassword,
    String? name,
    final String? Uid,



  }){
    return RegisterState(email:  email ?? this.email,
        password:  password?? this.password,
    name: name?? this.name,
      retypepassword: retypepassword?? this.password,
        Uid: Uid?? this.Uid


    );
  }
}

class changesuffixiconstate extends RegisterState{
}
