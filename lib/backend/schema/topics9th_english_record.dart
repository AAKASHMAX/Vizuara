import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Topics9thEnglishRecord extends FirestoreRecord {
  Topics9thEnglishRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "TopicName" field.
  String? _topicName;
  String get topicName => _topicName ?? '';
  bool hasTopicName() => _topicName != null;

  // "VideoPath" field.
  String? _videoPath;
  String get videoPath => _videoPath ?? '';
  bool hasVideoPath() => _videoPath != null;

  // "ChapterName" field.
  String? _chapterName;
  String get chapterName => _chapterName ?? '';
  bool hasChapterName() => _chapterName != null;

  // "Language" field.
  String? _language;
  String get language => _language ?? '';
  bool hasLanguage() => _language != null;

  // "ClassID" field.
  String? _classID;
  String get classID => _classID ?? '';
  bool hasClassID() => _classID != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "TopicID" field.
  int? _topicID;
  int get topicID => _topicID ?? 0;
  bool hasTopicID() => _topicID != null;

  // "Selected" field.
  bool? _selected;
  bool get selected => _selected ?? false;
  bool hasSelected() => _selected != null;

  // "Thumbnail" field.
  String? _thumbnail;
  String get thumbnail => _thumbnail ?? '';
  bool hasThumbnail() => _thumbnail != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _topicName = snapshotData['TopicName'] as String?;
    _videoPath = snapshotData['VideoPath'] as String?;
    _chapterName = snapshotData['ChapterName'] as String?;
    _language = snapshotData['Language'] as String?;
    _classID = snapshotData['ClassID'] as String?;
    _description = snapshotData['Description'] as String?;
    _topicID = castToType<int>(snapshotData['TopicID']);
    _selected = snapshotData['Selected'] as bool?;
    _thumbnail = snapshotData['Thumbnail'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Topics9th_English')
          : FirebaseFirestore.instance.collectionGroup('Topics9th_English');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('Topics9th_English').doc(id);

  static Stream<Topics9thEnglishRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Topics9thEnglishRecord.fromSnapshot(s));

  static Future<Topics9thEnglishRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => Topics9thEnglishRecord.fromSnapshot(s));

  static Topics9thEnglishRecord fromSnapshot(DocumentSnapshot snapshot) =>
      Topics9thEnglishRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Topics9thEnglishRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Topics9thEnglishRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Topics9thEnglishRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Topics9thEnglishRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTopics9thEnglishRecordData({
  String? topicName,
  String? videoPath,
  String? chapterName,
  String? language,
  String? classID,
  String? description,
  int? topicID,
  bool? selected,
  String? thumbnail,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'TopicName': topicName,
      'VideoPath': videoPath,
      'ChapterName': chapterName,
      'Language': language,
      'ClassID': classID,
      'Description': description,
      'TopicID': topicID,
      'Selected': selected,
      'Thumbnail': thumbnail,
    }.withoutNulls,
  );

  return firestoreData;
}

class Topics9thEnglishRecordDocumentEquality
    implements Equality<Topics9thEnglishRecord> {
  const Topics9thEnglishRecordDocumentEquality();

  @override
  bool equals(Topics9thEnglishRecord? e1, Topics9thEnglishRecord? e2) {
    return e1?.topicName == e2?.topicName &&
        e1?.videoPath == e2?.videoPath &&
        e1?.chapterName == e2?.chapterName &&
        e1?.language == e2?.language &&
        e1?.classID == e2?.classID &&
        e1?.description == e2?.description &&
        e1?.topicID == e2?.topicID &&
        e1?.selected == e2?.selected &&
        e1?.thumbnail == e2?.thumbnail;
  }

  @override
  int hash(Topics9thEnglishRecord? e) => const ListEquality().hash([
        e?.topicName,
        e?.videoPath,
        e?.chapterName,
        e?.language,
        e?.classID,
        e?.description,
        e?.topicID,
        e?.selected,
        e?.thumbnail
      ]);

  @override
  bool isValidKey(Object? o) => o is Topics9thEnglishRecord;
}
