import 'dart:convert';

class UserModel {
  final String email;
  final String senha;
  final String nome;
  UserModel({
    required this.email,
    required this.senha,
    required this.nome,
  });

  UserModel copyWith({
    String? email,
    String? senha,
    String? nome,
  }) {
    return UserModel(
      email: email ?? this.email,
      senha: senha ?? this.senha,
      nome: nome ?? this.nome,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
  
    result.addAll({'email': email});
    result.addAll({'senha': senha});
    result.addAll({'nome': nome});
  
    return result;
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] ?? '',
      senha: map['senha'] ?? '',
      nome: map['nome'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));

  @override
  String toString() => 'UserModel(email: $email, senha: $senha, nome: $nome)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is UserModel &&
      other.email == email &&
      other.senha == senha &&
      other.nome == nome;
  }

  @override
  int get hashCode => email.hashCode ^ senha.hashCode ^ nome.hashCode;
}