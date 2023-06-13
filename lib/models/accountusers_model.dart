class AccountUser {
  int id;
  String name;
  String prenom;
  String email;
  String password;

  AccountUser(this.id, this.name, this.prenom, this.email, this.password);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'first_name': prenom,
      'email': email,
      'password': password,
    };
  }

  factory AccountUser.fromJson(Map<String, dynamic> json) {
    return AccountUser(
      json['id'],
      json['name'],
      json['prenom'],
      json['email'],
      json['password'],
    );
  }
}
