import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NotificationRecord extends FirestoreRecord {
  NotificationRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Seen" field.
  bool? _seen;
  bool get seen => _seen ?? false;
  bool hasSeen() => _seen != null;

  // "NotificationTital" field.
  String? _notificationTital;
  String get notificationTital => _notificationTital ?? '';
  bool hasNotificationTital() => _notificationTital != null;

  // "NotificationDetail" field.
  String? _notificationDetail;
  String get notificationDetail => _notificationDetail ?? '';
  bool hasNotificationDetail() => _notificationDetail != null;

  // "Category" field.
  int? _category;
  int get category => _category ?? 0;
  bool hasCategory() => _category != null;

  // "NotificationImage" field.
  String? _notificationImage;
  String get notificationImage => _notificationImage ?? '';
  bool hasNotificationImage() => _notificationImage != null;

  // "ClassID" field.
  String? _classID;
  String get classID => _classID ?? '';
  bool hasClassID() => _classID != null;

  // "ChapterName" field.
  String? _chapterName;
  String get chapterName => _chapterName ?? '';
  bool hasChapterName() => _chapterName != null;

  // "TopicName" field.
  String? _topicName;
  String get topicName => _topicName ?? '';
  bool hasTopicName() => _topicName != null;

  // "Langauge" field.
  String? _langauge;
  String get langauge => _langauge ?? '';
  bool hasLangauge() => _langauge != null;

  // "VideoPath" field.
  String? _videoPath;
  String get videoPath => _videoPath ?? '';
  bool hasVideoPath() => _videoPath != null;

  // "VideoDescription" field.
  String? _videoDescription;
  String get videoDescription => _videoDescription ?? '';
  bool hasVideoDescription() => _videoDescription != null;

  // "pdf" field.
  String? _pdf;
  String get pdf => _pdf ?? '';
  bool hasPdf() => _pdf != null;

  // "Images" field.
  List<String>? _images;
  List<String> get images => _images ?? const [];
  bool hasImages() => _images != null;

  // "QuetionImage" field.
  List<String>? _quetionImage;
  List<String> get quetionImage => _quetionImage ?? const [];
  bool hasQuetionImage() => _quetionImage != null;

  // "NotificationID" field.
  int? _notificationID;
  int get notificationID => _notificationID ?? 0;
  bool hasNotificationID() => _notificationID != null;

  void _initializeFields() {
    _seen = snapshotData['Seen'] as bool?;
    _notificationTital = snapshotData['NotificationTital'] as String?;
    _notificationDetail = snapshotData['NotificationDetail'] as String?;
    _category = castToType<int>(snapshotData['Category']);
    _notificationImage = snapshotData['NotificationImage'] as String?;
    _classID = snapshotData['ClassID'] as String?;
    _chapterName = snapshotData['ChapterName'] as String?;
    _topicName = snapshotData['TopicName'] as String?;
    _langauge = snapshotData['Langauge'] as String?;
    _videoPath = snapshotData['VideoPath'] as String?;
    _videoDescription = snapshotData['VideoDescription'] as String?;
    _pdf = snapshotData['pdf'] as String?;
    _images = getDataList(snapshotData['Images']);
    _quetionImage = getDataList(snapshotData['QuetionImage']);
    _notificationID = castToType<int>(snapshotData['NotificationID']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Notification');

  static Stream<NotificationRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NotificationRecord.fromSnapshot(s));

  static Future<NotificationRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NotificationRecord.fromSnapshot(s));

  static NotificationRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NotificationRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NotificationRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NotificationRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NotificationRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NotificationRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNotificationRecordData({
  bool? seen,
  String? notificationTital,
  String? notificationDetail,
  int? category,
  String? notificationImage,
  String? classID,
  String? chapterName,
  String? topicName,
  String? langauge,
  String? videoPath,
  String? videoDescription,
  String? pdf,
  int? notificationID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Seen': seen,
      'NotificationTital': notificationTital,
      'NotificationDetail': notificationDetail,
      'Category': category,
      'NotificationImage': notificationImage,
      'ClassID': classID,
      'ChapterName': chapterName,
      'TopicName': topicName,
      'Langauge': langauge,
      'VideoPath': videoPath,
      'VideoDescription': videoDescription,
      'pdf': pdf,
      'NotificationID': notificationID,
    }.withoutNulls,
  );

  return firestoreData;
}

class NotificationRecordDocumentEquality
    implements Equality<NotificationRecord> {
  const NotificationRecordDocumentEquality();

  @override
  bool equals(NotificationRecord? e1, NotificationRecord? e2) {
    const listEquality = ListEquality();
    return e1?.seen == e2?.seen &&
        e1?.notificationTital == e2?.notificationTital &&
        e1?.notificationDetail == e2?.notificationDetail &&
        e1?.category == e2?.category &&
        e1?.notificationImage == e2?.notificationImage &&
        e1?.classID == e2?.classID &&
        e1?.chapterName == e2?.chapterName &&
        e1?.topicName == e2?.topicName &&
        e1?.langauge == e2?.langauge &&
        e1?.videoPath == e2?.videoPath &&
        e1?.videoDescription == e2?.videoDescription &&
        e1?.pdf == e2?.pdf &&
        listEquality.equals(e1?.images, e2?.images) &&
        listEquality.equals(e1?.quetionImage, e2?.quetionImage) &&
        e1?.notificationID == e2?.notificationID;
  }

  @override
  int hash(NotificationRecord? e) => const ListEquality().hash([
        e?.seen,
        e?.notificationTital,
        e?.notificationDetail,
        e?.category,
        e?.notificationImage,
        e?.classID,
        e?.chapterName,
        e?.topicName,
        e?.langauge,
        e?.videoPath,
        e?.videoDescription,
        e?.pdf,
        e?.images,
        e?.quetionImage,
        e?.notificationID
      ]);

  @override
  bool isValidKey(Object? o) => o is NotificationRecord;
}
