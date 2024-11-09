class Character {
  final String name;
  final String imageUrl;
  final String status;
  final String nickname;
  final String portrayed;

  Character({
    required this.name,
    required this.imageUrl,
    required this.status,
    required this.nickname,
    required this.portrayed,
  });

  // Constructor untuk membuat objek dari JSON
  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      name: json['name'],
      imageUrl: json['img'],
      status: json['status'],
      nickname: json['nickname'],
      portrayed: json['portrayed'],
    );
  }
}
