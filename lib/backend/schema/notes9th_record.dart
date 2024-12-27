import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Notes9thRecord extends FirestoreRecord {
  Notes9thRecord._(
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
          ? parent.collection('Notes9th')
          : FirebaseFirestore.instance.collectionGroup('Notes9th');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Notes9th').doc(id);

  static Stream<Notes9thRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Notes9thRecord.fromSnapshot(s));

  static Future<Notes9thRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Notes9thRecord.fromSnapshot(s));

  static Notes9thRecord fromSnapshot(DocumentSnapshot snapshot) =>
      Notes9thRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Notes9thRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Notes9thRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Notes9thRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Notes9thRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotes9thRecordData({
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

class Notes9thRecordDocumentEquality implements Equality<Notes9thRecord> {
  const Notes9thRecordDocumentEquality();

  @override
  bool equals(Notes9thRecord? e1, Notes9thRecord? e2) {
    return e1?.notesImage == e2?.notesImage && e1?.number == e2?.number;
  }

  @override
  int hash(Notes9thRecord? e) =>
      const ListEquality().hash([e?.notesImage, e?.number]);

  @override
  bool isValidKey(Object? o) => o is Notes9thRecord;
}
