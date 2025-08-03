class Note {
  final String id;
  String title;
  String description;
  DateTime createdAt;
  DateTime updatedAt;
  bool isPinned; // Added pin functionality

  Note({
    required this.id,
    required this.title,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
    this.isPinned = false, // Default to not pinned
  });

  Note copyWith({
    String? title,
    String? description,
    DateTime? updatedAt,
    bool? isPinned, // Added pin parameter
  }) {
    return Note(
      id: id,
      title: title ?? this.title,
      description: description ?? this.description,
      createdAt: createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isPinned: isPinned ?? this.isPinned, // Handle pin state
    );
  }

  @override
  String toString() {
    return 'Note{id: $id, title: $title, description: $description, isPinned: $isPinned}';
  }
}
