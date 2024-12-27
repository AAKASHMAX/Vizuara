import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Question10thRecord extends FirestoreRecord {
  Question10thRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "QuestionImage" field.
  String? _questionImage;
  String get questionImage => _questionImage ?? '';
  bool hasQuestionImage() => _questionImage != null;

  // "Number" field.
  int? _number;
  int get number => _number ?? 0;
  bool hasNumber() => _number != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _questionImage = snapshotData['QuestionImage'] as String?;
    _number = castToType<int>(snapshotData['Number']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Question10th')
          : FirebaseFirestore.instance.collectionGroup('Question10th');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Question10th').doc(id);

  static Stream<Question10thRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Question10thRecord.fromSnapshot(s));

  static Future<Question10thRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Question10thRecord.fromSnapshot(s));

  static Question10thRecord fromSnapshot(DocumentSnapshot snapshot) =>
      Question10thRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Question10thRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Question10thRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Question10thRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Question10thRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuestion10thRecordData({
  String? questionImage,
  int? number,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'QuestionImage': questionImage,
      'Number': number,
    }.withoutNulls,
  );

  return firestoreData;
}

class Question10thRecordDocumentEquality
    implements Equality<Question10thRecord> {
  const Question10thRecordDocumentEquality();

  @override
  bool equals(Question10thRecord? e1, Question10thRecord? e2) {
    return e1?.questionImage == e2?.questionImage && e1?.number == e2?.number;
  }

  @override
  int hash(Question10thRecord? e) =>
      const ListEquality().hash([e?.questionImage, e?.number]);

  @override
  bool isValidKey(Object? o) => o is Question10thRecord;
}
