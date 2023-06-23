class User{
  int? id;
  String? name;
  String? email;
  String? picture;
  int? user_id;
  int? role;
  String? token;

  User({
    this.id,
    this.name,
    this.email,
    this.picture,
    this.user_id,
    this.role,
    this.token
  });

  factory User.fromJson(Map<String, dynamic>json){
    return User(
      email: json['user']['email'],
      name: json['user']['name'],
      picture: json['user']['picture'],
      user_id: json['user']['user_id'],
      role: json['user']['role'],
      token: json['token'],
    );
  }
}