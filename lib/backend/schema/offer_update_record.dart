import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfferUpdateRecord extends FirestoreRecord {
  OfferUpdateRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Image1" field.
  String? _image1;
  String get image1 => _image1 ?? '';
  bool hasImage1() => _image1 != null;

  // "Image2" field.
  String? _image2;
  String get image2 => _image2 ?? '';
  bool hasImage2() => _image2 != null;

  // "Image3" field.
  String? _image3;
  String get image3 => _image3 ?? '';
  bool hasImage3() => _image3 != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _image1 = snapshotData['Image1'] as String?;
    _image2 = snapshotData['Image2'] as String?;
    _image3 = snapshotData['Image3'] as String?;
    _image = snapshotData['Image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Offer_Update');

  static Stream<OfferUpdateRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OfferUpdateRecord.fromSnapshot(s));

  static Future<OfferUpdateRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OfferUpdateRecord.fromSnapshot(s));

  static OfferUpdateRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OfferUpdateRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OfferUpdateRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OfferUpdateRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OfferUpdateRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OfferUpdateRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOfferUpdateRecordData({
  String? image1,
  String? image2,
  String? image3,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Image1': image1,
      'Image2': image2,
      'Image3': image3,
      'Image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class OfferUpdateRecordDocumentEquality implements Equality<OfferUpdateRecord> {
  const OfferUpdateRecordDocumentEquality();

  @override
  bool equals(OfferUpdateRecord? e1, OfferUpdateRecord? e2) {
    return e1?.image1 == e2?.image1 &&
        e1?.image2 == e2?.image2 &&
        e1?.image3 == e2?.image3 &&
        e1?.image == e2?.image;
  }

  @override
  int hash(OfferUpdateRecord? e) =>
      const ListEquality().hash([e?.image1, e?.image2, e?.image3, e?.image]);

  @override
  bool isValidKey(Object? o) => o is OfferUpdateRecord;
}
