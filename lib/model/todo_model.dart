class TodoModel {
  String title;
  bool isDone;

  TodoModel({required this.title, this.isDone = false});

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      TodoModel(title: json['title'], isDone: json['isDone']);

  Map<String, dynamic> toJson() => {'title': title, 'isDone': isDone};
}
