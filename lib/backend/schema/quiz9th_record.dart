import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Quiz9thRecord extends FirestoreRecord {
  Quiz9thRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "QuestionNo" field.
  int? _questionNo;
  int get questionNo => _questionNo ?? 0;
  bool hasQuestionNo() => _questionNo != null;

  // "Question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "OptionA" field.
  String? _optionA;
  String get optionA => _optionA ?? '';
  bool hasOptionA() => _optionA != null;

  // "OptionB" field.
  String? _optionB;
  String get optionB => _optionB ?? '';
  bool hasOptionB() => _optionB != null;

  // "OptionC" field.
  String? _optionC;
  String get optionC => _optionC ?? '';
  bool hasOptionC() => _optionC != null;

  // "OptionD" field.
  String? _optionD;
  String get optionD => _optionD ?? '';
  bool hasOptionD() => _optionD != null;

  // "RightAnswer" field.
  int? _rightAnswer;
  int get rightAnswer => _rightAnswer ?? 0;
  bool hasRightAnswer() => _rightAnswer != null;

  // "Explanation" field.
  String? _explanation;
  String get explanation => _explanation ?? '';
  bool hasExplanation() => _explanation != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _questionNo = castToType<int>(snapshotData['QuestionNo']);
    _question = snapshotData['Question'] as String?;
    _optionA = snapshotData['OptionA'] as String?;
    _optionB = snapshotData['OptionB'] as String?;
    _optionC = snapshotData['OptionC'] as String?;
    _optionD = snapshotData['OptionD'] as String?;
    _rightAnswer = castToType<int>(snapshotData['RightAnswer']);
    _explanation = snapshotData['Explanation'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Quiz9th')
          : FirebaseFirestore.instance.collectionGroup('Quiz9th');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Quiz9th').doc(id);

  static Stream<Quiz9thRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Quiz9thRecord.fromSnapshot(s));

  static Future<Quiz9thRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Quiz9thRecord.fromSnapshot(s));

  static Quiz9thRecord fromSnapshot(DocumentSnapshot snapshot) =>
      Quiz9thRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Quiz9thRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Quiz9thRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Quiz9thRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Quiz9thRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createQuiz9thRecordData({
  int? questionNo,
  String? question,
  String? optionA,
  String? optionB,
  String? optionC,
  String? optionD,
  int? rightAnswer,
  String? explanation,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'QuestionNo': questionNo,
      'Question': question,
      'OptionA': optionA,
      'OptionB': optionB,
      'OptionC': optionC,
      'OptionD': optionD,
      'RightAnswer': rightAnswer,
      'Explanation': explanation,
    }.withoutNulls,
  );

  return firestoreData;
}

class Quiz9thRecordDocumentEquality implements Equality<Quiz9thRecord> {
  const Quiz9thRecordDocumentEquality();

  @override
  bool equals(Quiz9thRecord? e1, Quiz9thRecord? e2) {
    return e1?.questionNo == e2?.questionNo &&
        e1?.question == e2?.question &&
        e1?.optionA == e2?.optionA &&
        e1?.optionB == e2?.optionB &&
        e1?.optionC == e2?.optionC &&
        e1?.optionD == e2?.optionD &&
        e1?.rightAnswer == e2?.rightAnswer &&
        e1?.explanation == e2?.explanation;
  }

  @override
  int hash(Quiz9thRecord? e) => const ListEquality().hash([
        e?.questionNo,
        e?.question,
        e?.optionA,
        e?.optionB,
        e?.optionC,
        e?.optionD,
        e?.rightAnswer,
        e?.explanation
      ]);

  @override
  bool isValidKey(Object? o) => o is Quiz9thRecord;
}
