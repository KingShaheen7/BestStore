class User {
  final int userId;
  final String name;
  final String password;
  final String fullName;
  final String email;

  const User({
    required this.userId,
    required this.name,
    required this.password,
    required this.fullName,
    required this.email,
  });

  // Factory constructor to create a User from JSON data
  factory User.fromJson(Map<String, dynamic> json) => User(
    userId: json['userId'] ?? 0,  // Provide a default value for safety
    name: json['username'] ?? '',  // Correctly map username
    password: json['passwordHash'] ?? '',  // Correctly map passwordHash
    fullName: json['fullName'] ?? '',  // Correctly map fullName
    email: json['email'] ?? '',  // Correctly map email
  );

  // Convert User instance to JSON map
  Map<String, dynamic> toJson() => {
    "userId": userId,
    "username": name,  // Ensure consistent naming
    "passwordHash": password,
    "fullName": fullName,
    "email": email,
  };
}
