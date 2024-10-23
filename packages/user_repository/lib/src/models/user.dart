import 'package:equatable/equatable.dart';
import '../entities/entities.dart';

class MyUser extends Equatable {
  final String userid; 
  final String email; 
  final String name;

  const MyUser({
    required this.userid,
    required this.name,
    required this.email,
  });

  static const empty = MyUser(userid: '', 
  name: '', 
  email: ''
  );

  MyUser copyWith({
   String? userid, 
   String? email, 
   String? name,
  }){
    return MyUser(
    userid: userid ?? this.userid,
    name: name ?? this.name,
    email: email ?? this.email
    );
  }

  MyUserEntity toEntity(){
    return MyUserEntity(
      userid: userid,
    name: name,
    email:email,
    );
  }

  static MyUser fromEntity(MyUserEntity entity){
    return MyUser(
      userid: entity.userid,
      name: entity.name,
      email: entity.email);
  }
  @override
  // TODO: implement props
  List<Object?> get props => [userid, email, name];
}