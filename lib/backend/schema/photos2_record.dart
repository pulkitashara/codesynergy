import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Photos2Record extends FirestoreRecord {
  Photos2Record._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "img2" field.
  String? _img2;
  String get img2 => _img2 ?? '';
  bool hasImg2() => _img2 != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _img2 = snapshotData['img2'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('photos2')
          : FirebaseFirestore.instance.collectionGroup('photos2');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('photos2').doc();

  static Stream<Photos2Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Photos2Record.fromSnapshot(s));

  static Future<Photos2Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Photos2Record.fromSnapshot(s));

  static Photos2Record fromSnapshot(DocumentSnapshot snapshot) =>
      Photos2Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Photos2Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Photos2Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Photos2Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Photos2Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPhotos2RecordData({
  String? img2,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'img2': img2,
    }.withoutNulls,
  );

  return firestoreData;
}

class Photos2RecordDocumentEquality implements Equality<Photos2Record> {
  const Photos2RecordDocumentEquality();

  @override
  bool equals(Photos2Record? e1, Photos2Record? e2) {
    return e1?.img2 == e2?.img2;
  }

  @override
  int hash(Photos2Record? e) => const ListEquality().hash([e?.img2]);

  @override
  bool isValidKey(Object? o) => o is Photos2Record;
}
