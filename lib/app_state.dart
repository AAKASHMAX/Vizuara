import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _check = false;
  bool get check => _check;
  set check(bool value) {
    _check = value;
  }

  int _RightOption = 0;
  int get RightOption => _RightOption;
  set RightOption(int value) {
    _RightOption = value;
  }

  int _QuestionNumber = 1;
  int get QuestionNumber => _QuestionNumber;
  set QuestionNumber(int value) {
    _QuestionNumber = value;
  }

  bool _ShowExplanation = false;
  bool get ShowExplanation => _ShowExplanation;
  set ShowExplanation(bool value) {
    _ShowExplanation = value;
  }

  bool _HideExplanation = false;
  bool get HideExplanation => _HideExplanation;
  set HideExplanation(bool value) {
    _HideExplanation = value;
  }

  String _videopath =
      'https://firebasestorage.googleapis.com/v0/b/vizuara-app-felcys.appspot.com/o/9thClass%2F9th_English_videos%2F1%3A%20Matter%20in%20our%20surrounding%2F2.State%20of%20matter.mp4?alt=media&token=2e548aaf-3830-46d9-b384-b9c66ccbd08c';
  String get videopath => _videopath;
  set videopath(String value) {
    _videopath = value;
  }

  List<DocumentReference> _selecteditems = [];
  List<DocumentReference> get selecteditems => _selecteditems;
  set selecteditems(List<DocumentReference> value) {
    _selecteditems = value;
  }

  void addToSelecteditems(DocumentReference value) {
    selecteditems.add(value);
  }

  void removeFromSelecteditems(DocumentReference value) {
    selecteditems.remove(value);
  }

  void removeAtIndexFromSelecteditems(int index) {
    selecteditems.removeAt(index);
  }

  void updateSelecteditemsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    selecteditems[index] = updateFn(_selecteditems[index]);
  }

  void insertAtIndexInSelecteditems(int index, DocumentReference value) {
    selecteditems.insert(index, value);
  }

  int _Menu = 1;
  int get Menu => _Menu;
  set Menu(int value) {
    _Menu = value;
  }

  int _VideoNum = 0;
  int get VideoNum => _VideoNum;
  set VideoNum(int value) {
    _VideoNum = value;
  }

  int _selectionID = 1;
  int get selectionID => _selectionID;
  set selectionID(int value) {
    _selectionID = value;
  }

  int _LanguageType = 1;
  int get LanguageType => _LanguageType;
  set LanguageType(int value) {
    _LanguageType = value;
  }

  List<String> _NotesImage = [];
  List<String> get NotesImage => _NotesImage;
  set NotesImage(List<String> value) {
    _NotesImage = value;
  }

  void addToNotesImage(String value) {
    NotesImage.add(value);
  }

  void removeFromNotesImage(String value) {
    NotesImage.remove(value);
  }

  void removeAtIndexFromNotesImage(int index) {
    NotesImage.removeAt(index);
  }

  void updateNotesImageAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    NotesImage[index] = updateFn(_NotesImage[index]);
  }

  void insertAtIndexInNotesImage(int index, String value) {
    NotesImage.insert(index, value);
  }

  int _Count = 0;
  int get Count => _Count;
  set Count(int value) {
    _Count = value;
  }

  String _ClassID = '';
  String get ClassID => _ClassID;
  set ClassID(String value) {
    _ClassID = value;
  }

  String _Language = 'English';
  String get Language => _Language;
  set Language(String value) {
    _Language = value;
  }

  String _ChapterName = '';
  String get ChapterName => _ChapterName;
  set ChapterName(String value) {
    _ChapterName = value;
  }
}
