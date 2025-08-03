class Note {
  final String id;
  String title;
  String description;
  DateTime createdAt;
  DateTime updatedAt;
  bool isPinned; 

  Note({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    this.isPinned = false, 
  });

  Note copyWith({
    String? title,
    String? description,
    DateTime? updatedAt,
    bool? isPinned, 
  }) {
    return Note(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      createdAt: createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isPinned: isPinned ?? this.isPinned,
    );
  }

  @override
  String toString() {
    return 'Note{id: $id, title: $title, description: $description, isPinned: $isPinned}';
  }
}
