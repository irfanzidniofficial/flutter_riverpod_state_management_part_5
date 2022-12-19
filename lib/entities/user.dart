class User {
  final int id;
  final String name;

  User({
    required this.id,
    required this.name,
  });

  factory User.fromJson(Map<String, dynamic> json) =>
      User(id: json['id'], name: '${json['first_name']} ${json['last_name']}');

  @override
  String toString() => '($id) $name';
}
