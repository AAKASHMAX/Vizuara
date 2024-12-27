import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Class9thEnglishRecord extends FirestoreRecord {
  Class9thEnglishRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ChapterName" field.
  String? _chapterName;
  String get chapterName => _chapterName ?? '';
  bool hasChapterName() => _chapterName != null;

  // "SubjectID" field.
  int? _subjectID;
  int get subjectID => _subjectID ?? 0;
  bool hasSubjectID() => _subjectID != null;

  // "ChapterImage" field.
  String? _chapterImage;
  String get chapterImage => _chapterImage ?? '';
  bool hasChapterImage() => _chapterImage != null;

  // "ClassID" field.
  String? _classID;
  String get classID => _classID ?? '';
  bool hasClassID() => _classID != null;

  // "ChapterNo" field.
  int? _chapterNo;
  int get chapterNo => _chapterNo ?? 0;
  bool hasChapterNo() => _chapterNo != null;

  // "QuestionCount" field.
  int? _questionCount;
  int get questionCount => _questionCount ?? 0;
  bool hasQuestionCount() => _questionCount != null;

  // "IsMember" field.
  bool? _isMember;
  bool get isMember => _isMember ?? false;
  bool hasIsMember() => _isMember != null;

  // "NotesImages" field.
  List<String>? _notesImages;
  List<String> get notesImages => _notesImages ?? const [];
  bool hasNotesImages() => _notesImages != null;

  // "PDF" field.
  String? _pdf;
  String get pdf => _pdf ?? '';
  bool hasPdf() => _pdf != null;

  // "QuestionImage" field.
  List<String>? _questionImage;
  List<String> get questionImage => _questionImage ?? const [];
  bool hasQuestionImage() => _questionImage != null;

  // "QuestionPDF" field.
  String? _questionPDF;
  String get questionPDF => _questionPDF ?? '';
  bool hasQuestionPDF() => _questionPDF != null;

  // "IsTopic" field.
  bool? _isTopic;
  bool get isTopic => _isTopic ?? false;
  bool hasIsTopic() => _isTopic != null;

  // "Language" field.
  String? _language;
  String get language => _language ?? '';
  bool hasLanguage() => _language != null;

  // "NumberOfVideos" field.
  int? _numberOfVideos;
  int get numberOfVideos => _numberOfVideos ?? 0;
  bool hasNumberOfVideos() => _numberOfVideos != null;

  // "Sequence" field.
  int? _sequence;
  int get sequence => _sequence ?? 0;
  bool hasSequence() => _sequence != null;

  // "NotesPDF" field.
  int? _notesPDF;
  int get notesPDF => _notesPDF ?? 0;
  bool hasNotesPDF() => _notesPDF != null;

  void _initializeFields() {
    _chapterName = snapshotData['ChapterName'] as String?;
    _subjectID = castToType<int>(snapshotData['SubjectID']);
    _chapterImage = snapshotData['ChapterImage'] as String?;
    _classID = snapshotData['ClassID'] as String?;
    _chapterNo = castToType<int>(snapshotData['ChapterNo']);
    _questionCount = castToType<int>(snapshotData['QuestionCount']);
    _isMember = snapshotData['IsMember'] as bool?;
    _notesImages = getDataList(snapshotData['NotesImages']);
    _pdf = snapshotData['PDF'] as String?;
    _questionImage = getDataList(snapshotData['QuestionImage']);
    _questionPDF = snapshotData['QuestionPDF'] as String?;
    _isTopic = snapshotData['IsTopic'] as bool?;
    _language = snapshotData['Language'] as String?;
    _numberOfVideos = castToType<int>(snapshotData['NumberOfVideos']);
    _sequence = castToType<int>(snapshotData['Sequence']);
    _notesPDF = castToType<int>(snapshotData['NotesPDF']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Class9th_English');

  static Stream<Class9thEnglishRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Class9thEnglishRecord.fromSnapshot(s));

  static Future<Class9thEnglishRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Class9thEnglishRecord.fromSnapshot(s));

  static Class9thEnglishRecord fromSnapshot(DocumentSnapshot snapshot) =>
      Class9thEnglishRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Class9thEnglishRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Class9thEnglishRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Class9thEnglishRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Class9thEnglishRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClass9thEnglishRecordData({
  String? chapterName,
  int? subjectID,
  String? chapterImage,
  String? classID,
  int? chapterNo,
  int? questionCount,
  bool? isMember,
  String? pdf,
  String? questionPDF,
  bool? isTopic,
  String? language,
  int? numberOfVideos,
  int? sequence,
  int? notesPDF,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ChapterName': chapterName,
      'SubjectID': subjectID,
      'ChapterImage': chapterImage,
      'ClassID': classID,
      'ChapterNo': chapterNo,
      'QuestionCount': questionCount,
      'IsMember': isMember,
      'PDF': pdf,
      'QuestionPDF': questionPDF,
      'IsTopic': isTopic,
      'Language': language,
      'NumberOfVideos': numberOfVideos,
      'Sequence': sequence,
      'NotesPDF': notesPDF,
    }.withoutNulls,
  );

  return firestoreData;
}

class Class9thEnglishRecordDocumentEquality
    implements Equality<Class9thEnglishRecord> {
  const Class9thEnglishRecordDocumentEquality();

  @override
  bool equals(Class9thEnglishRecord? e1, Class9thEnglishRecord? e2) {
    const listEquality = ListEquality();
    return e1?.chapterName == e2?.chapterName &&
        e1?.subjectID == e2?.subjectID &&
        e1?.chapterImage == e2?.chapterImage &&
        e1?.classID == e2?.classID &&
        e1?.chapterNo == e2?.chapterNo &&
        e1?.questionCount == e2?.questionCount &&
        e1?.isMember == e2?.isMember &&
        listEquality.equals(e1?.notesImages, e2?.notesImages) &&
        e1?.pdf == e2?.pdf &&
        listEquality.equals(e1?.questionImage, e2?.questionImage) &&
        e1?.questionPDF == e2?.questionPDF &&
        e1?.isTopic == e2?.isTopic &&
        e1?.language == e2?.language &&
        e1?.numberOfVideos == e2?.numberOfVideos &&
        e1?.sequence == e2?.sequence &&
        e1?.notesPDF == e2?.notesPDF;
  }

  @override
  int hash(Class9thEnglishRecord? e) => const ListEquality().hash([
        e?.chapterName,
        e?.subjectID,
        e?.chapterImage,
        e?.classID,
        e?.chapterNo,
        e?.questionCount,
        e?.isMember,
        e?.notesImages,
        e?.pdf,
        e?.questionImage,
        e?.questionPDF,
        e?.isTopic,
        e?.language,
        e?.numberOfVideos,
        e?.sequence,
        e?.notesPDF
      ]);

  @override
  bool isValidKey(Object? o) => o is Class9thEnglishRecord;
}
