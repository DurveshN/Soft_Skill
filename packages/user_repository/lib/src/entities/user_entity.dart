import 'package:equatable/equatable.dart';

class MyUserEntity extends Equatable{
  final String userid; 
  final String email; 
  final String name;

  const MyUserEntity({
    required this.userid,
    required this.name,
    required this.email,
  });

  Map<String, Object> toDocument(){
    return {
      'userid' : userid,
      'email' : email,
      'name' : name,
    };
  }

  static MyUserEntity fromDocument(Map<String, dynamic> doc){
    return MyUserEntity(
    userid: doc['userid'],
    name: doc['name'], 
    email: doc['email']);
  }
    @override
  // TODO: implement props
  List<Object?> get props => [userid, email, name];
}