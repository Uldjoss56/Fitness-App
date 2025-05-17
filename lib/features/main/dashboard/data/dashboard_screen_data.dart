import 'dart:convert';

final weekData = [
  {"day": "Mo", "total": 28},
  {"day": "Tu", "total": 25},
  {"day": "We", "total": 36},
  {"day": "Th", "total": 100},
  {"day": "Fr", "total": 60},
  {"day": "Sa", "total": 79},
  {"day": "Su", "total": 10},
];

class DailyActive {
  String day;
  int total;
  bool isMostHigh = false;

  DailyActive({required this.day, required this.total});

  DailyActive copyWith({String? day, int? total}) =>
      DailyActive(day: day ?? this.day, total: total ?? this.total);

  factory DailyActive.fromRawJson(String str) =>
      DailyActive.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DailyActive.fromJson(Map<String, dynamic> json) =>
      DailyActive(day: json["day"], total: json["total"]);

  Map<String, dynamic> toJson() => {"day": day, "total": total};

}
