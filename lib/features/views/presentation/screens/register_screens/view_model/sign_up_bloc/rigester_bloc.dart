
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'rigester_event.dart';
part 'rigester_state.dart';

class RigesterBloc extends Bloc<RigesterEvent, RegisterState> {

  bool obsecuretext=true;
  Icon icon=Icon(Icons.remove_red_eye);
  RigesterBloc() : super(RegisterState()) {
    on<NameRegisterEvent>(_nameEvent);

    on<EmailRegisterEvent>(_emailEvent);

    on<passwordRegisterEvent>(_passwordEvent);


    on<ReTypepasswordRegisterEvent>(_repasswordEvent);
  }
  void _nameEvent(NameRegisterEvent event,Emitter<RegisterState> emit){
    emit(state.copyWith(name: event.name));

  }
  void _passwordEvent(passwordRegisterEvent event,Emitter<RegisterState> emit){
    emit(state.copyWith(password: event.password));

  }
  void _repasswordEvent(ReTypepasswordRegisterEvent event,Emitter<RegisterState> emit){
    emit(state.copyWith(retypepassword: event.retypepassword));

  }
  void _emailEvent(EmailRegisterEvent event,Emitter<RegisterState> emit){
    emit(state.copyWith(email: event.email));

  }
  void _UidEvent(UidRegisterEvent event,Emitter<RegisterState> emit){
    emit(state.copyWith(Uid: event.Uid));

  }

  void changeObsecureTextevent(){

    Icon icondata=Icon(Icons.remove_red_eye_outlined);
    obsecuretext=!obsecuretext;
    icon = icondata ;
    emit(changesuffixiconstate( ));

  }

}

