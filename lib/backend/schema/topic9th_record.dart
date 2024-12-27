import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Topic9thRecord extends FirestoreRecord {
  Topic9thRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "TopicName" field.
  String? _topicName;
  String get topicName => _topicName ?? '';
  bool hasTopicName() => _topicName != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "VideoPathE" field.
  String? _videoPathE;
  String get videoPathE => _videoPathE ?? '';
  bool hasVideoPathE() => _videoPathE != null;

  // "VideoPathH" field.
  String? _videoPathH;
  String get videoPathH => _videoPathH ?? '';
  bool hasVideoPathH() => _videoPathH != null;

  // "TopicID" field.
  int? _topicID;
  int get topicID => _topicID ?? 0;
  bool hasTopicID() => _topicID != null;

  // "Thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  bool hasThumbnail() => _thumbnail != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _topicName = snapshotData['TopicName'] as String?;
    _description = snapshotData['Description'] as String?;
    _videoPathE = snapshotData['VideoPathE'] as String?;
    _videoPathH = snapshotData['VideoPathH'] as String?;
    _topicID = castToType<int>(snapshotData['TopicID']);
    _thumbnail = snapshotData['Thumbnail'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Topic9th')
          : FirebaseFirestore.instance.collectionGroup('Topic9th');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Topic9th').doc(id);

  static Stream<Topic9thRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Topic9thRecord.fromSnapshot(s));

  static Future<Topic9thRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Topic9thRecord.fromSnapshot(s));

  static Topic9thRecord fromSnapshot(DocumentSnapshot snapshot) =>
      Topic9thRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Topic9thRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Topic9thRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Topic9thRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Topic9thRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTopic9thRecordData({
  String? topicName,
  String? description,
  String? videoPathE,
  String? videoPathH,
  int? topicID,
  String? thumbnail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TopicName': topicName,
      'Description': description,
      'VideoPathE': videoPathE,
      'VideoPathH': videoPathH,
      'TopicID': topicID,
      'Thumbnail': thumbnail,
    }.withoutNulls,
  );

  return firestoreData;
}

class Topic9thRecordDocumentEquality implements Equality<Topic9thRecord> {
  const Topic9thRecordDocumentEquality();

  @override
  bool equals(Topic9thRecord? e1, Topic9thRecord? e2) {
    return e1?.topicName == e2?.topicName &&
        e1?.description == e2?.description &&
        e1?.videoPathE == e2?.videoPathE &&
        e1?.videoPathH == e2?.videoPathH &&
        e1?.topicID == e2?.topicID &&
        e1?.thumbnail == e2?.thumbnail;
  }

  @override
  int hash(Topic9thRecord? e) => const ListEquality().hash([
        e?.topicName,
        e?.description,
        e?.videoPathE,
        e?.videoPathH,
        e?.topicID,
        e?.thumbnail
      ]);

  @override
  bool isValidKey(Object? o) => o is Topic9thRecord;
}
