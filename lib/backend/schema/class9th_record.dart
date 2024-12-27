import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Class9thRecord extends FirestoreRecord {
  Class9thRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "ChapterName" field.
  String? _chapterName;
  String get chapterName => _chapterName ?? '';
  bool hasChapterName() => _chapterName != null;

  // "ChapterNo" field.
  int? _chapterNo;
  int get chapterNo => _chapterNo ?? 0;
  bool hasChapterNo() => _chapterNo != null;

  // "ClassID" field.
  String? _classID;
  String get classID => _classID ?? '';
  bool hasClassID() => _classID != null;

  // "SubjectID" field.
  int? _subjectID;
  int get subjectID => _subjectID ?? 0;
  bool hasSubjectID() => _subjectID != null;

  // "ChapterImage" field.
  String? _chapterImage;
  String get chapterImage => _chapterImage ?? '';
  bool hasChapterImage() => _chapterImage != null;

  // "NotesPDF" field.
  String? _notesPDF;
  String get notesPDF => _notesPDF ?? '';
  bool hasNotesPDF() => _notesPDF != null;

  // "QuestionPDF" field.
  String? _questionPDF;
  String get questionPDF => _questionPDF ?? '';
  bool hasQuestionPDF() => _questionPDF != null;

  // "IsMember" field.
  bool? _isMember;
  bool get isMember => _isMember ?? false;
  bool hasIsMember() => _isMember != null;

  // "Sequence" field.
  int? _sequence;
  int get sequence => _sequence ?? 0;
  bool hasSequence() => _sequence != null;

  // "VideoPathE" field.
  String? _videoPathE;
  String get videoPathE => _videoPathE ?? '';
  bool hasVideoPathE() => _videoPathE != null;

  // "VideoPathH" field.
  String? _videoPathH;
  String get videoPathH => _videoPathH ?? '';
  bool hasVideoPathH() => _videoPathH != null;

  void _initializeFields() {
    _chapterName = snapshotData['ChapterName'] as String?;
    _chapterNo = castToType<int>(snapshotData['ChapterNo']);
    _classID = snapshotData['ClassID'] as String?;
    _subjectID = castToType<int>(snapshotData['SubjectID']);
    _chapterImage = snapshotData['ChapterImage'] as String?;
    _notesPDF = snapshotData['NotesPDF'] as String?;
    _questionPDF = snapshotData['QuestionPDF'] as String?;
    _isMember = snapshotData['IsMember'] as bool?;
    _sequence = castToType<int>(snapshotData['Sequence']);
    _videoPathE = snapshotData['VideoPathE'] as String?;
    _videoPathH = snapshotData['VideoPathH'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Class9th');

  static Stream<Class9thRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Class9thRecord.fromSnapshot(s));

  static Future<Class9thRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Class9thRecord.fromSnapshot(s));

  static Class9thRecord fromSnapshot(DocumentSnapshot snapshot) =>
      Class9thRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Class9thRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Class9thRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Class9thRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Class9thRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClass9thRecordData({
  String? chapterName,
  int? chapterNo,
  String? classID,
  int? subjectID,
  String? chapterImage,
  String? notesPDF,
  String? questionPDF,
  bool? isMember,
  int? sequence,
  String? videoPathE,
  String? videoPathH,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ChapterName': chapterName,
      'ChapterNo': chapterNo,
      'ClassID': classID,
      'SubjectID': subjectID,
      'ChapterImage': chapterImage,
      'NotesPDF': notesPDF,
      'QuestionPDF': questionPDF,
      'IsMember': isMember,
      'Sequence': sequence,
      'VideoPathE': videoPathE,
      'VideoPathH': videoPathH,
    }.withoutNulls,
  );

  return firestoreData;
}

class Class9thRecordDocumentEquality implements Equality<Class9thRecord> {
  const Class9thRecordDocumentEquality();

  @override
  bool equals(Class9thRecord? e1, Class9thRecord? e2) {
    return e1?.chapterName == e2?.chapterName &&
        e1?.chapterNo == e2?.chapterNo &&
        e1?.classID == e2?.classID &&
        e1?.subjectID == e2?.subjectID &&
        e1?.chapterImage == e2?.chapterImage &&
        e1?.notesPDF == e2?.notesPDF &&
        e1?.questionPDF == e2?.questionPDF &&
        e1?.isMember == e2?.isMember &&
        e1?.sequence == e2?.sequence &&
        e1?.videoPathE == e2?.videoPathE &&
        e1?.videoPathH == e2?.videoPathH;
  }

  @override
  int hash(Class9thRecord? e) => const ListEquality().hash([
        e?.chapterName,
        e?.chapterNo,
        e?.classID,
        e?.subjectID,
        e?.chapterImage,
        e?.notesPDF,
        e?.questionPDF,
        e?.isMember,
        e?.sequence,
        e?.videoPathE,
        e?.videoPathH
      ]);

  @override
  bool isValidKey(Object? o) => o is Class9thRecord;
}
