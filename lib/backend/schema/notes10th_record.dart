import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Notes10thRecord extends FirestoreRecord {
  Notes10thRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "NotesImage" field.
  String? _notesImage;
  String get notesImage => _notesImage ?? '';
  bool hasNotesImage() => _notesImage != null;

  // "Number" field.
  int? _number;
  int get number => _number ?? 0;
  bool hasNumber() => _number != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _notesImage = snapshotData['NotesImage'] as String?;
    _number = castToType<int>(snapshotData['Number']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Notes10th')
          : FirebaseFirestore.instance.collectionGroup('Notes10th');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Notes10th').doc(id);

  static Stream<Notes10thRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Notes10thRecord.fromSnapshot(s));

  static Future<Notes10thRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Notes10thRecord.fromSnapshot(s));

  static Notes10thRecord fromSnapshot(DocumentSnapshot snapshot) =>
      Notes10thRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Notes10thRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Notes10thRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Notes10thRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Notes10thRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotes10thRecordData({
  String? notesImage,
  int? number,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NotesImage': notesImage,
      'Number': number,
    }.withoutNulls,
  );

  return firestoreData;
}

class Notes10thRecordDocumentEquality implements Equality<Notes10thRecord> {
  const Notes10thRecordDocumentEquality();

  @override
  bool equals(Notes10thRecord? e1, Notes10thRecord? e2) {
    return e1?.notesImage == e2?.notesImage && e1?.number == e2?.number;
  }

  @override
  int hash(Notes10thRecord? e) =>
      const ListEquality().hash([e?.notesImage, e?.number]);

  @override
  bool isValidKey(Object? o) => o is Notes10thRecord;
}
