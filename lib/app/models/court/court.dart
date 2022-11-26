import 'dart:convert';

class Court {
  bool exclusivity;
  String title;
  String image;
  String description;
  String businessHour;
  String scheddulingDuration;
  Court({
    required this.exclusivity,
    required this.title,
    required this.image,
    required this.description,
    required this.businessHour,
    required this.scheddulingDuration,
  });

  Court copyWith({
    bool? exclusivity,
    String? title,
    String? image,
    String? description,
    String? businessHour,
    String? scheddulingDuration,
  }) {
    return Court(
      exclusivity: exclusivity ?? this.exclusivity,
      title: title ?? this.title,
      image: image ?? this.image,
      description: description ?? this.description,
      businessHour: businessHour ?? this.businessHour,
      scheddulingDuration: scheddulingDuration ?? this.scheddulingDuration,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'exclusivity': exclusivity,
      'title': title,
      'image': image,
      'description': description,
      'businessHour': businessHour,
      'scheddulingDuration': scheddulingDuration,
    };
  }

  factory Court.fromMap(Map<String, dynamic> map) {
    return Court(
      exclusivity: map['exclusivity'] ?? false,
      title: map['title'] ?? '',
      image: map['image'] ?? '',
      description: map['description'] ?? '',
      businessHour: map['businessHour'] ?? '',
      scheddulingDuration: map['scheddulingDuration'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Court.fromJson(String source) => Court.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Court(exclusivity: $exclusivity, title: $title, image: $image, description: $description, businessHour: $businessHour, scheddulingDuration: $scheddulingDuration)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Court &&
      other.exclusivity == exclusivity &&
      other.title == title &&
      other.image == image &&
      other.description == description &&
      other.businessHour == businessHour &&
      other.scheddulingDuration == scheddulingDuration;
  }

  @override
  int get hashCode {
    return exclusivity.hashCode ^
      title.hashCode ^
      image.hashCode ^
      description.hashCode ^
      businessHour.hashCode ^
      scheddulingDuration.hashCode;
  }
}
