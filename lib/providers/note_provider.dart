import 'package:flutter/foundation.dart';
import '../models/note.dart';

class NoteProvider with ChangeNotifier {
  final List<Note> _notes = [];
  String _searchQuery = ''; 

  List<Note> get notes {
    List<Note> filteredNotes = _notes;
    
    if (_searchQuery.isNotEmpty) {
      filteredNotes = _notes.where((note) =>
        note.title.toLowerCase().contains(_searchQuery.toLowerCase()) ||
        note.description.toLowerCase().contains(_searchQuery.toLowerCase())
      ).toList();
    }
    
    filteredNotes.sort((a, b) {
      if (a.isPinned && !b.isPinned) return -1;
      if (!a.isPinned && b.isPinned) return 1;
      return b.updatedAt.compareTo(a.updatedAt);
    });
    
    return filteredNotes;
  }

  List<Note> get allNotes => List.unmodifiable(_notes);

  int get notesCount => _notes.length;
  
  String get searchQuery => _searchQuery; 

  void setSearchQuery(String query) {
    _searchQuery = query;
    notifyListeners();
  }

  void clearSearch() {
    _searchQuery = '';
    notifyListeners();
  }

  void addNote(String title, String description) {
    final note = Note(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      title: title,
      description: description,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
    _notes.insert(0, note);
    notifyListeners();
  }

  void updateNote(String id, String title, String description) {
    final index = _notes.indexWhere((note) => note.id == id);
    if (index != -1) {
      _notes[index] = _notes[index].copyWith(
        title: title,
        description: description,
        updatedAt: DateTime.now(),
      );
      notifyListeners();
    }
  }

  void togglePinNote(String id) {
    final index = _notes.indexWhere((note) => note.id == id);
    if (index != -1) {
      _notes[index] = _notes[index].copyWith(
        isPinned: !_notes[index].isPinned,
        updatedAt: DateTime.now(),
      );
      notifyListeners();
    }
  }

  void deleteNote(String id) {
    _notes.removeWhere((note) => note.id == id);
    notifyListeners();
  }

  Note? getNoteById(String id) {
    try {
      return _notes.firstWhere((note) => note.id == id);
    } catch (e) {
      return null;
    }
  }
}
